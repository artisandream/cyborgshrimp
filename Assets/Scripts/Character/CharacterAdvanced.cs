using UnityEngine;//
using System.Collections;//
using System;

public class CharacterAdvanced : MonoBehaviour {

	public static Action<float> SendCharacterDirection;
	public CharacterController myController; //this is the charactor component.
	public Transform myArt;
	public Animator myAnim;
	private float hInput;
	private string animName = "Walk";
	public float speed = 0.5f;
	private bool flipped;
	private Vector3 moveDirection;
	public float jumpSpeed = 10;
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

	//Hello Class!
	void Start () {
		MoveCharacterViaButtons.MoveCharacter += ChangeInputFloat;
		MoveCharacterViaArrowKeys.MoveCharacter += ChangeInputFloat;
		EndGame.TurnOffGame += KillPlayer;
	}

	void ChangeInputFloat (float _f) {
		hInput = _f;
	}
	void Update () 
	{

		if ((myController.collisionFlags & CollisionFlags.Sides) == 0) {
			//myAnim.SetBool("Jump", false);
		}

		if ((myController.collisionFlags & CollisionFlags.Sides) != 0) {
			myAnim.SetBool("Jump", false);
			moveDirection = new Vector3(hInput*speed, 0, 0);
			if(hInput <= -0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(!flipped) {
					myArt.Rotate(0,180,0);
					if(SendCharacterDirection != null)
						SendCharacterDirection(myArt.eulerAngles.y);

					flipped = true;
					StaticVars.currentDirection = StaticVars.Direction.LEFT;
				}
			}
			
			if(hInput >= 0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(flipped) {
					myArt.Rotate(0,180,0);
					if(SendCharacterDirection != null)
						SendCharacterDirection(myArt.eulerAngles.y);

					flipped = false;
					StaticVars.currentDirection = StaticVars.Direction.RIGHT;
				}
			}


			if(hInput == 0) {
				myAnim.SetFloat(animName, hInput);
			}
			
			if (Input.GetButton("Jump")) {
				myAnim.SetBool("Jump", true);
				moveDirection.z = jumpSpeed;
			}	
		} 
		moveDirection.z -= gravity * Time.deltaTime;
		myController.Move(moveDirection*Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}