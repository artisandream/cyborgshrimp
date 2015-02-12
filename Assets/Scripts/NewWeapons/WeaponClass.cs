using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponClass : MonoBehaviour {

	public List<AmmoClass> avaliableAmmo;
	public List<GameObject> Targets;

	public static Action<WeaponClass> AddWeaponToList;
	public Transform weaponArt;
	public bool ifAvaliable = false;
	public int currentAmmo = 0;
	public int ammoSpeed = 10;
	public int ammoPower = 1;
	public float powerUpScale = 0.14f;
	public float playScale = 0.8f;

	private float weaponDirection = 0; 
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
		CharacterAdvanced.SendCharacterDirection += GetCharacterDirection;
	}
	// Use this for initialization
	void Start () {

		if(ifAvaliable)
			AddToAvaliableWeapons ();
	}

	void StartLate () {
		print ("Late");
	}

	void GetCharacterDirection (float _f) {
		weaponDirection = _f;
	}

	void AddAmmo (AmmoClass _a) {
		if(_a.thisWeaponSelection == thisWeaponSelection)
			avaliableAmmo.Add(_a);
	}

	public void FireAmmo (Vector3 _firingDirection) {
		if(Time.time > activationTime) {//checks if time is greater than the activation time var
				activationTime = Time.time + nextActivate;//adds the nextActive var to time
			if(avaliableAmmo.Count-1 >= currentAmmo) {
				if(!avaliableAmmo[currentAmmo].gameObject.activeSelf) {
					if(StaticVars.currentDirection == StaticVars.Direction.RIGHT) {
						targetPosition.x = this.transform.position.x + 100;
					} else {
						targetPosition.x = this.transform.position.x - 100;
					}
					Targets[currentAmmo].transform.position = targetPosition;
					avaliableAmmo[currentAmmo].transform.position = this.transform.position;
					avaliableAmmo[currentAmmo].Target = Targets[currentAmmo].gameObject;
					avaliableAmmo[currentAmmo].OnActivateAmmo();
	//				avaliableAmmo[currentAmmo].OnActivateAmmo(weaponArt.position, weaponDirection, ammoSpeed);
					currentAmmo++;
				}
			} else {
				currentAmmo = 0;
			}
		}
	}

	void OnTriggerEnter () {
		ifAvaliable = true;
		AddToAvaliableWeapons();
	}
}
