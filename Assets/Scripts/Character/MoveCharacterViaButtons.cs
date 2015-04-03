using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class MoveCharacterViaButtons : MonoBehaviour 
{
	public float jumpForce = 1;
	public float direction = 1;

	public StaticVars.Direction currentDirection = StaticVars.Direction.LEFT;

	public static Action<float> MoveCharacter;
	public static Action<float> JumpKeyEvt;

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
		if(JumpKeyEvt != null){
			JumpKeyEvt (jumpForce);
		}
	}
}
