using UnityEngine;
using System.Collections;
using System;

public class SwitchCurrentWeapon : MonoBehaviour {

	public static Action SwitchWeapon;
	public int activationNum = 0;

	void Start() 
	{
	//	WeaponList.ActivateWeaponSwitch +=
	}

	void ActivateThis ()
	{

	}

	void OnMouseDown () {
		if(SwitchWeapon != null)
			SwitchWeapon();
	}
}
