﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine.UI;

public class WeaponList : MonoBehaviour {

	public List<WeaponClass> avaliableWeapons;
	public List<WeaponBar> WeaponBars;
	public List<FireWeaponChoice> FireButtons;
	public Color[] WeaponColor;
	public static Action<int> ActivateWeaponSwitch;
	public static Action<WeaponType.weaponSelection> WeaponType;
	public Vector3 resetWeaponRotation;
	private int adderNum;
	public int currentWeaponNum = 0;
	public Vector3 weaponLocation;

	void CurrentWeaponNum (int _i)
	{
		currentWeaponNum = _i;
	}

	void Start () {
		resetWeaponRotation.x = 270;
		WeaponBars = new List<WeaponBar> ();
		WeaponBar.AddWeaponBar += AddWeaponBars;
		FireWeaponChoice.AddFire += AddWeaponButtons;
		avaliableWeapons = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddWeapons;
		SwitchCurrentWeapon.SwitchWeapon += SwitchThisWeapon;
		FireWeaponChoice.FireCurrentWeapon += CurrentWeaponNum;
		FireWeaponChoice.FireCurrentWeapon += FireWeapon;
		FireThisWeapon.FireCurrentWeapon += FireWeapon;
	}

	void AddWeaponBars (WeaponBar _b) {
		WeaponBars.Add (_b);
	}

	void AddWeaponButtons (FireWeaponChoice _f)
	{
		FireButtons.Add (_f);
	}

	void AddBarToWeaponClass (WeaponClass _w) {
		adderNum = avaliableWeapons.Count - 1;
		avaliableWeapons [adderNum].ChangeAmmoBar += WeaponBars[adderNum].UpdateAmmoBar;
		WeaponBars [adderNum].GetComponent<Image> ().color = WeaponColor [adderNum];

		FireButtons [adderNum].choiceNum = adderNum;
		FireButtons [adderNum].GetComponent<Image> ().color = WeaponColor [adderNum];
		FireButtons [adderNum].GetComponent<Image> ().enabled = true;

		print (FireButtons [adderNum].choiceNum);
	}

	void AddWeapons (WeaponClass _w) {
		avaliableWeapons.Add(_w);
		if(ActivateWeaponSwitch != null)
			ActivateWeaponSwitch(avaliableWeapons.Count);

		if (WeaponType != null)
			WeaponType (_w.thisWeaponSelection);

		AddBarToWeaponClass (_w);
		_w.gameObject.transform.parent = this.gameObject.transform;
		_w.gameObject.transform.localPosition = weaponLocation;
		_w.gameObject.transform.localRotation = Quaternion.Euler(resetWeaponRotation);

	}

	void SwitchThisWeapon () {
		if(avaliableWeapons.Count-1 > currentWeaponNum) {
			currentWeaponNum++;
		} else {
			currentWeaponNum = 0;
		}
	}

	void Fire ()
	{
		if (avaliableWeapons.Count > 0)
			avaliableWeapons [currentWeaponNum].FireAmmo (Vector3.right);
	}

	void FireWeapon (int _i) {
		Fire ();
	} 

	void FireWeapon () {
		Fire ();
	} 
}
