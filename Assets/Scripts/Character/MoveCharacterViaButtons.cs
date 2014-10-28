// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class MoveCharacterViaButtons : MonoBehaviour 
{
	public float direction = 1;
	public static Action<float> MoveCharacter;

	void OnMouseDown () {
		if(MoveCharacter != null )
			MoveCharacter(direction);
	}

	void OnMouseUp () {
		if(MoveCharacter != null )
			MoveCharacter(0);
	}
}
