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

	//Hello Class!
	void Start () {
		MoveCharacterViaButtons.MoveCharacter += ChangeInputFloat;
		MoveCharacterViaArrowKeys.MoveCharacter += ChangeInputFloat;
	}

	void ChangeInputFloat (float _f) {
		hInput = _f;
	}
	void Update () 
	{
		if ((myController.collisionFlags & CollisionFlags.Sides) != 0) {
			moveDirection = new Vector3(hInput*speed, 0, 0);
			if(hInput <= -0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(!flipped) {
					myArt.Rotate(0,180,0);
					if(SendCharacterDirection != null)
						SendCharacterDirection(myArt.eulerAngles.y);

					flipped = true;
				}
			}
			
			if(hInput >= 0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(flipped) {
					myArt.Rotate(0,180,0);
					if(SendCharacterDirection != null)
						SendCharacterDirection(myArt.eulerAngles.y);

					flipped = false;
				}
			}


			if(hInput == 0) {
				myAnim.SetFloat(animName, hInput);
			}
			
			if (Input.GetButton("Jump")) 
				moveDirection.z = jumpSpeed;
		
		}
		moveDirection.z -= gravity * Time.deltaTime;
		myController.Move(moveDirection*Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}