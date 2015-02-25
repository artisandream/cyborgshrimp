using UnityEngine;//
using System.Collections;//
using System;

public class CharacterAdvanced : MonoBehaviour {

	//public static Action<float> SendCharacterDirection;
	public CharacterController myController; //this is the charactor component.
	public Transform myArt;
	public Animator myAnim;
	private float hInput;
	private string animName = "Walk";
	public float speed = 0.5f;
	private bool flipped;
	private Vector3 moveDirection;
	public float jumpForce;
	public float gravity = 20;

	void KillPlayer ()
	{
		myAnim.SetBool("Arm", false);
		myAnim.SetBool("Fire", false);
		myAnim.SetBool("Jump", false);
		myAnim.SetFloat("Walk", 0);
		myAnim.SetBool("Die", true);
		myAnim.SetLayerWeight (1, 0);
		EndGame.TurnOffGame -= KillPlayer;
		this.enabled = false;
	}

	void PreMove (float _f)
	{
		StartCoroutine (StartMove (_f));
	}

	//Hello Class!
	void Start () {
		MoveCharacterViaButtons.MoveCharacter += ChangeInputFloat;
		MoveViaKeys.MoveKeyEvt += ChangeInputFloat;
		MoveViaKeys.MoveKeyEvt += PreMove;
		MoveViaKeys.JumpKeyEvt += JumpCharacter;
		EndGame.TurnOffGame += KillPlayer;
		PreMove (0);
	}

	void ChangeInputFloat (float _f) {
		hInput = _f;
	}

	void MoveAndChangeDirection (bool b, bool b2)
	{
		myAnim.SetFloat(animName, hInput);
		if(flipped == b) {
			myArt.Rotate(0,180,0);
			flipped = b2;
		}
	}

	IEnumerator StopJumpForce ()
	{
		yield return new WaitForSeconds (0.01f);
		jumpForce = 0;
	}

	void JumpCharacter (float _jump)
	{
		myAnim.SetBool ("Jump", true);
		jumpForce = _jump;
		StartCoroutine (StopJumpForce ());
		//StartCoroutine (StartMove (0));
	}

	IEnumerator StartMove (float _f) {
		while (myController.velocity.x == 0) {
			MoveThis();
			yield return null;
		}
		yield return StartCoroutine (EndMove (0));
	}

	IEnumerator EndMove (float _f) {
		while (myController.velocity.x > 0.01f || myController.velocity.x <= -0.01f ) {
			MoveThis();
			yield return null;
		}
//		while (myController.velocity.z > 0.01f || myController.velocity.z <= -0.01f) {
//			//MoveThis();
//		}
		yield return new WaitForSeconds (0.01f);
		print ("Ended");
	}

	void MoveThis () 
	{
		print ("Called");
//		print(myController.velocity);
		if ((myController.collisionFlags & CollisionFlags.Sides) != 0) {
			myAnim.SetBool("Jump", false);
			moveDirection = new Vector3(hInput*speed, 0, 0);
			
			switch(StaticVars.currentDirection) {
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
		myController.Move(moveDirection*Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}