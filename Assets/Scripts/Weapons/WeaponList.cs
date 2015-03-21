using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine.UI;

public class WeaponList : MonoBehaviour
{

	public List<WeaponClass> avaliableWeapons;
	public List<WeaponBar> WeaponBars;
	public List<FireWeaponChoice> FireButtons;
	public Color[] WeaponColor;
	public static Action<int> ActivateWeaponSwitch;
	public static Action WeaponType;
	public Vector3 resetWeaponRotation;
	public Transform meleeAttachPoint;
	public Transform RangeAttachPoint;
	private int adderNum;
	public int currentWeaponNum = 0;
	public int currentlyPickedWeaponNum = 0;
	public Vector3 weaponLocation;

	void CurrentWeaponNum(int _i)
	{
		currentWeaponNum = _i;
	}

	public void Start()
	{
		WeaponAttachPoint.AttachAction += addAttachPoints;
		resetWeaponRotation.x = 270;
		WeaponBars = new List<WeaponBar>();
		WeaponBar.AddWeaponBar += AddWeaponBars;
		FireWeaponChoice.AddFire += AddWeaponButtons;
		avaliableWeapons = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddWeapons;
		SwitchCurrentWeapon.SwitchWeapon += SwitchThisWeapon;
		FireWeaponChoice.FireCurrentWeapon += CurrentWeaponNum;
		FireWeaponChoice.FireCurrentWeapon += FireWeapon;
		//FireThisWeapon.FireCurrentWeapon += FireWeapon;
	}

	void AddWeaponBars(WeaponBar _b)
	{
		WeaponBars.Add(_b);
	}

	void addAttachPoints(WeaponAttachPoint obj)
	{
		switch (obj.thisAttachType) {
			case WeaponAttachPoint.AttachType.Melee:
				meleeAttachPoint = obj.transform;
				break;

			case WeaponAttachPoint.AttachType.Range:
				RangeAttachPoint = obj.transform;
				break;
		}
	}

	void AddWeaponButtons(FireWeaponChoice _f)
	{
		FireButtons.Add(_f);
	}

	void AddBarToWeaponClass(WeaponClass _w)
	{
		adderNum = avaliableWeapons.Count - 1;
		avaliableWeapons [adderNum].ChangeAmmoBar += WeaponBars [adderNum].UpdateAmmoBar;
		WeaponBars [adderNum].GetComponent<Image>().color = WeaponColor [adderNum];

		FireButtons [adderNum].choiceNum = adderNum;
		FireButtons [adderNum].GetComponent<Image>().color = WeaponColor [adderNum];
		FireButtons [adderNum].GetComponent<Image>().enabled = true;
	}

	void AddWeapons(WeaponClass _w)
	{
		resetWeaponRotation.y = _w.setRotation;
		avaliableWeapons.Add(_w);
		if (ActivateWeaponSwitch != null)
			ActivateWeaponSwitch(avaliableWeapons.Count);

		if (WeaponType != null)
			WeaponType();

		AddBarToWeaponClass(_w);

		switch (_w.KindOfWeapon) {
			case WeaponAttachPoint.AttachType.Melee:
				_w.gameObject.transform.parent = meleeAttachPoint;
				break;
			
			case WeaponAttachPoint.AttachType.Range:
				_w.gameObject.transform.parent = RangeAttachPoint;
				break;
		}

		_w.gameObject.transform.localPosition = weaponLocation;
		_w.gameObject.transform.localRotation = Quaternion.Euler(resetWeaponRotation);
		DeactivateAllWeapons();
	}

	void DeactivateAllWeapons()
	{
		foreach (WeaponClass _w in avaliableWeapons) {
			_w.gameObject.SetActive(false);
		}
		ActivateCurrentWeapon();
	}

	void ActivateCurrentWeapon()
	{
		avaliableWeapons [currentWeaponNum].gameObject.SetActive(true);
	}

	void SwitchThisWeapon()
	{
		if (avaliableWeapons.Count - 1 > currentWeaponNum) {
			currentWeaponNum++;
		} else {
			currentWeaponNum = 0;
		}
	}

	void Fire()
	{
		if (avaliableWeapons.Count > 0) {
			//if (currentlyPickedWeaponNum == currentWeaponNum) {
				DeactivateAllWeapons();
			//}
			avaliableWeapons [currentWeaponNum].FireAmmo();
		}

	}
	void FireWeapon(int _i)
	{
		currentlyPickedWeaponNum = _i;
		Fire();
	}

	void FireWeapon()
	{
		Fire();
	} 
}
