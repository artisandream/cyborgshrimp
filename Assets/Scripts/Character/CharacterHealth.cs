using UnityEngine;
using System.Collections;
using System;

public class CharacterHealth : MonoBehaviour {

	public static Action UpdateHealth;
	
	void OnTriggerEnter ( )
	{
		if(UpdateHealth != null)
			UpdateHealth();
	}
}
