using UnityEngine;
using System.Collections;
using System;

public class CharacterHealthKiller : MonoBehaviour {

	public static Action<float> UpdateHealth;
	public float ammoPower = 0.1f;
	
	void OnTriggerEnter ()
	{
		if(UpdateHealth != null)
			UpdateHealth(ammoPower);
	}
}
