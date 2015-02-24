// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class MoveCharacterViaArrowKeys : MonoBehaviour 
{
	public static Action<float> MoveCharacter;
	public static Action JumpCharacter;

	static void AddInputToCharacter (float _k)
	{
		if (MoveCharacter != null) {
			MoveCharacter (_k);
		}
	}

	void DisableScript ()
	{
		this.enabled = false;
	}

	void Start() {
		EndGame.TurnOffGame += DisableScript;
	}

	void Update () 
	{
		if(Input.GetKey(KeyCode.LeftArrow)) 
			AddInputToCharacter (Input.GetAxis ("Horizontal"));
		
		if(Input.GetKey(KeyCode.RightArrow) )
			AddInputToCharacter (Input.GetAxis ("Horizontal"));

		if(Input.GetKeyUp(KeyCode.LeftArrow) || Input.GetKeyUp(KeyCode.RightArrow))
		   AddInputToCharacter(0);

		if (Input.GetButton ("Jump")) {
			if(JumpCharacter != null)
				JumpCharacter();
		
			print("Jump");
		}
			//				myAnim.SetBool("Jump", true);
	}
}
