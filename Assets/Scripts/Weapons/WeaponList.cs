using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponList : MonoBehaviour {

	public List<WeaponClass> avaliableWeapons;
	public static Action<int> ActivateWeaponSwitch;
	public int currentWeaponNum = 0;
	public Vector3 weaponLocation;

	// Use this for initialization
	void Start () {
		avaliableWeapons = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddWeapons;
		SwitchCurrentWeapon.SwitchWeapon += SwitchThisWeapon;
		FireThisWeapon.FireCurrentWeapon += FireWeapon;
	}

	void AddWeapons (WeaponClass _w) {
		avaliableWeapons.Add(_w);
		if(ActivateWeaponSwitch != null)
			ActivateWeaponSwitch(avaliableWeapons.Count);

		//_w.weaponArt.localScale = new Vector3(_w.playScale, _w.playScale, _w.playScale);
		_w.gameObject.transform.parent = this.gameObject.transform;
		_w.gameObject.transform.localPosition = weaponLocation;
	}

	void SwitchThisWeapon () {
		if(avaliableWeapons.Count-1 > currentWeaponNum) {
			currentWeaponNum++;
		} else {
			currentWeaponNum = 0;
		}
	}

	void FireWeapon () {
		if(avaliableWeapons.Count > 0)
			avaliableWeapons[currentWeaponNum].FireAmmo(Vector3.right);
	} 
}
