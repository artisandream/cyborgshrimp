using UnityEngine;
using System.Collections;
using System;

public class CharacterHealthKiller : MonoBehaviour {

	public float ammoPower = 0.1f;
	public static Action<float> UpdateHealth;

	void OnTriggerEnter (Collider _collider)
	{
		if(_collider.tag == "Player") {
			if(UpdateHealth != null)
				UpdateHealth(ammoPower);
		}
	}
}
