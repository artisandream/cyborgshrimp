using UnityEngine;
using System.Collections;
using System;

public class MoveViaKeys : MonoBehaviour {

	public static Action<float> MoveKeyEvt;
	public static Action<float> JumpKeyEvt;

	void DisableScript ()
	{
		this.enabled = false;
	}

	public float jumpForce = 10;

	void Start () {
		EndGame.TurnOffGame += DisableScript;
	}


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

		if (Input.GetButton ("Jump") && JumpKeyEvt != null) {
			JumpKeyEvt (jumpForce);
		}
	}
}
