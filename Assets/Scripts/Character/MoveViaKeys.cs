using UnityEngine;
using System.Collections;

public class MoveViaKeys : MonoBehaviour {

	void DisableScript ()
	{
		this.enabled = false;
	}

	public float jumpForce = 10;

	void Start () {
		EndGame.TurnOffGame += DisableScript;
	}

	public delegate void MoveKeyDel (float _speed);
	public static event MoveKeyDel MoveKeyEvt;

	public delegate void JumpKeyDel (float _speed);
	public static event JumpKeyDel JumpKeyEvt;

	static void SendInput (StaticVars.Direction _direction)
	{
		StaticVars.currentDirection = _direction;
		MoveKeyEvt (Input.GetAxis("Horizontal"));
	}

	void Update () {
		if (Input.GetKey (KeyCode.LeftArrow) && MoveKeyEvt != null) {
			SendInput (StaticVars.Direction.LEFT);
		}

		if (Input.GetKey (KeyCode.RightArrow) && MoveKeyEvt != null) {
			SendInput (StaticVars.Direction.RIGHT);
		}

		if ((Input.GetKeyUp (KeyCode.LeftArrow) || Input.GetKeyUp (KeyCode.RightArrow)) && MoveKeyEvt != null)
			MoveKeyEvt (0);

		if (Input.GetButton ("Jump") && JumpKeyEvt != null)
			JumpKeyEvt (jumpForce);
	}
}
