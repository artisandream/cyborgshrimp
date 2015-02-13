using UnityEngine;
using System.Collections;
using System;

public class CharacterHealth : MonoBehaviour {

	public static Action UpdateHealth;

	void Start () {
		//EnemyWeaponFX.ResetAmmo += UpdateHealth;
	}
	
	void OnTriggerEnter ( )
	{
		if(UpdateHealth != null)
			UpdateHealth();
	}
}
