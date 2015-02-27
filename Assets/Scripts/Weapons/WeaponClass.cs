﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponClass : MonoBehaviour {

	public List<AmmoClass> avaliableAmmo;
	public Action<float> ChangeAmmoBar;
	public List<GameObject> Targets;
	public static Action<WeaponClass> AddWeaponToList;
	public Transform weaponArt;
	public bool ifAvaliable = false;
	public int currentAmmo = 0;
	public int ammoSpeed = 10;
	public int ammoPower = 1;
	public float AvaliableAmmountToFire = 10;
	private float startAvaliableAmmoToFire;
//	public RectTransform ammoBar;
//	public Vector3 ammoBarScale;
	public float powerUpScale = 0.14f;
	public float playScale = 0.8f;

	public int firingDistance = 100;

//	private float weaponDirection = 0; 
	private Vector3 targetPosition;

	public float nextActivate = 2.0F;//the next time the ammo "fires" or is activated
	private float activationTime = 0.0F;//the current time that is a contiuously changing var adding the time to the nextActive var
	
	public WeaponType.weaponSelection thisWeaponSelection;

	void AddToAvaliableWeapons ()
	{
		if (AddWeaponToList != null) 
			AddWeaponToList (this);

		this.GetComponent<BoxCollider>().enabled = false;
	}

	void Awake () {
		avaliableAmmo = new List<AmmoClass>();
		
		AmmoClass.AddAmmoToList += AddAmmo;
		startAvaliableAmmoToFire = AvaliableAmmountToFire;
	}

	IEnumerator StartLate ()
	{
		yield return new WaitForSeconds (0.1f);

		if (ifAvaliable) {
			AddToAvaliableWeapons ();
		}
	}	

	void Start () {
		StartCoroutine (StartLate());
	}

	void AddAmmo (AmmoClass _a) {
		if(_a.thisWeaponSelection == thisWeaponSelection)
			avaliableAmmo.Add(_a);
	}

	public void FireAmmo (Vector3 _firingDirection) {
		if(Time.time > activationTime && AvaliableAmmountToFire > 0) {//checks if time is greater than the activation time var
				activationTime = Time.time + nextActivate;//adds the nextActive var to time
			if(avaliableAmmo.Count-1 >= currentAmmo) {
				if(!avaliableAmmo[currentAmmo].gameObject.activeSelf) {

					switch(StaticVars.currentDirection) {
					case StaticVars.Direction.RIGHT:
						targetPosition.x = this.transform.position.x + firingDistance;
						break;

					case StaticVars.Direction.LEFT:
						targetPosition.x = this.transform.position.x - firingDistance;
						break;
					}

					Targets[currentAmmo].transform.position = targetPosition;
					avaliableAmmo[currentAmmo].transform.position = this.transform.position;
					avaliableAmmo[currentAmmo].Target = Targets[currentAmmo].gameObject;
					avaliableAmmo[currentAmmo].OnActivateAmmo();
					AvaliableAmmountToFire--;
					UpdateAmmoBar ();
					currentAmmo++;
				}
			} else {
				currentAmmo = 0;
			}
		}
	}

	void UpdateAmmoBar () {
		if (ChangeAmmoBar != null)
			ChangeAmmoBar (AvaliableAmmountToFire / startAvaliableAmmoToFire);

		print ("Change");
//		ammoBarScale.x = (AvaliableAmmountToFire / startAvaliableAmmoToFire);
//		ammoBar.localScale = ammoBarScale;
	}

	void OnTriggerEnter () {
		ifAvaliable = true;
			AddToAvaliableWeapons();
	}
}
