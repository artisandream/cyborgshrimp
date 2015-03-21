using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {

	public GameObject PlayerArt;
	public Rigidbody2D playerRigid;
	public float myForce = 20;
	public float increaseMass = 0.0002f;
	private Vector2 v2;

	void Start() {
		v2.y = 1;
		//JumpAndFuelScript.JumpPlayer += JumpPlayer;
	}

	void OnDestroy () {
		//JumpAndFuelScript.JumpPlayer -= JumpPlayer;
	}

	void DeactivateArt () {
		PlayerArt.SetActive(false);
	}

	void JumpPlayer () {
		playerRigid.AddForce(v2 * myForce);
		playerRigid.mass += increaseMass;
	}
}
