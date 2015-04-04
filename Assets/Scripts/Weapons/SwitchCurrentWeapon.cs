using UnityEngine;
using System.Collections;
using System;

public class SwitchCurrentWeapon : MonoBehaviour {

	public static Action SwitchWeapon;
	public int activationNum = 0;
	
	void OnMouseDown () {
		if(SwitchWeapon != null)
			SwitchWeapon();
	}
}
