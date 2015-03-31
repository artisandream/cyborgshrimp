using UnityEngine;
using System.Collections;
using System;

public class CharacterAdvanced : MonoBehaviour
{
	private bool flipped;

	private float hInput;
	public float speed = 0.5f;
	public float jumpForce;
	public float gravity = 20;

	private string animName = "Walk";
	
	private Vector3 moveDirection;

	public CharacterController myController;
	public Transform myArt;

	public static Action<string, bool> ChangeAnimBool;
	public static Action<string, float> ChangeAnimFloat;

	void KillPlayer()
	{
		EndGame.TurnOffGame -= KillPlayer;
		this.enabled = false;
	}

	void Start()
	{
		MoveCharacterViaButtons.MoveCharacter += ChangeInputFloat;
		MoveCharacterViaButtons.JumpKeyEvt += JumpCharacter;
		MoveViaKeys.MoveKeyEvt += ChangeInputFloat;
		MoveViaKeys.JumpKeyEvt += JumpCharacter;
		EndGame.TurnOffGame += KillPlayer;
	}

	void ChangeInputFloat(float _f)
	{
		hInput = _f;
	}

	void MoveAndChangeDirection(bool b, bool b2)
	{
		ChangeAnimFloat(animName, hInput);

		if (flipped == b) {
			myArt.Rotate(0, 180, 0);
			flipped = b2;
		}
	}

	IEnumerator StopJumpForce()
	{
		yield return new WaitForSeconds(0.001f);
		if (ChangeAnimBool != null) {
			ChangeAnimBool("Jump", true);
		}
		jumpForce = 0;
	}

	void JumpCharacter(float _jump)
	{
		jumpForce = _jump;
		StartCoroutine(StopJumpForce());
	}
	
	void Update()
	{

		if ((myController.collisionFlags & CollisionFlags.Sides) != 0) {
			if (ChangeAnimBool != null) {
				ChangeAnimBool("Jump", false);
			}
			moveDirection = new Vector3(hInput * speed, 0, 0);
			switch (StaticVars.currentDirection) {
				case StaticVars.Direction.LEFT:
					MoveAndChangeDirection(false, true);
					break;
				case StaticVars.Direction.RIGHT:
					MoveAndChangeDirection(true, false);
					break;
			}
			moveDirection.z = jumpForce;
		} 
		moveDirection.z -= gravity * Time.deltaTime;
		myController.Move(moveDirection * Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}