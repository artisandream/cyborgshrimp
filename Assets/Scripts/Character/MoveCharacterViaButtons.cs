// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class MoveCharacterViaButtons : MonoBehaviour 
{
	public float jumpForce = 1;

	public StaticVars.Direction currentDirection = StaticVars.Direction.LEFT;
	public float direction = 1;
	public static Action<float> MoveCharacter;

	public delegate void JumpKeyDel (float _speed);
	public static event JumpKeyDel JumpKeyEvt;

	public void OnMouseDown () {
		StaticVars.currentDirection = currentDirection;
		if(MoveCharacter != null )
			MoveCharacter(direction);
		print ("Button");
	}

	public void OnMouseUp () {
		if(MoveCharacter != null )
			MoveCharacter(0);
	}

	public void OnJump () {
		if(JumpKeyEvt != null)
			JumpKeyEvt (jumpForce);
	}
}
