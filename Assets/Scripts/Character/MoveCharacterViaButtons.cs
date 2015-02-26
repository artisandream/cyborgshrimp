// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class MoveCharacterViaButtons : MonoBehaviour 
{

	public float direction = 1;
	public static Action<float> MoveCharacter;

	public void OnMouseDown () {
		if(MoveCharacter != null )
			MoveCharacter(direction);
		print ("Button");
	}

	public void OnMouseUp () {
		if(MoveCharacter != null )
			MoveCharacter(0);
	}
}
