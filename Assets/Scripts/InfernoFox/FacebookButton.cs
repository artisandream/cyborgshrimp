// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class FacebookButton : MonoBehaviour 
{
	public static Action SendFacebook;

	void OnClick () {
		if(SendFacebook != null)
			SendFacebook();
	}
}
