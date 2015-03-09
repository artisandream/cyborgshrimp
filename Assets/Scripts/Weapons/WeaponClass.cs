using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponClass : MonoBehaviour {

	public List<AmmoClass> avaliableAmmo;
	public Action<float> ChangeAmmoBar;
	public List<GameObject> Targets;
	public int numberOfTargets = 3;
	public static Action<WeaponClass> AddWeaponToList;
	public bool ifAvaliable = false;
	public int currentAmmoNum = 0;
	public int ammoSpeed = 10;
	public int ammoPower = 1;
	public float AvaliableAmmountToFire = 10;
	private float startAvaliableAmmoToFire;
	public float powerUpScale = 0.14f;
	public float playScale = 0.8f;
	public int firingDistance = 100;
	public float setRotation = 0;
	private Vector3 targetPosition;
	public Transform centerFiringPosition;

	public WeaponAttachPoint.AttachType KindOfWeapon;


	public float nextActivate = 2.0F;//the next time the ammo "fires" or is activated
	public float activationTime = 0.0F;//the current time that is a contiuously changing var adding the time to the nextActive var
	
	public WeaponType.weaponSelection thisWeaponSelection;

	public void AddToAvaliableWeapons ()
	{
		if (AddWeaponToList != null) 
			AddWeaponToList (this);

		this.GetComponent<BoxCollider>().enabled = false;
	}

	void AddToTargetList (GameObject obj)
	{
		for (int i = 1 ; i <= numberOfTargets ; i++) {
			Targets.Add (obj);
		}
	}

	void Awake () {
		avaliableAmmo = new List<AmmoClass>();
		AmmoClass.AddAmmoToList += AddAmmo;
		AddAsWeaponsTarget.AddToTargetList += AddToTargetList;
		startAvaliableAmmoToFire = AvaliableAmmountToFire;
	}

	IEnumerator StartLate ()
	{
		yield return new WaitForSeconds (0.1f);

		if (ifAvaliable) {
			AddToAvaliableWeapons ();
		}
	}	

	public virtual void Start () {
		StartCoroutine (StartLate());
	}

	void AddAmmo (AmmoClass _a) {
		if (_a.thisWeaponSelection == thisWeaponSelection) {
			avaliableAmmo.Add (_a);
		}
	}

	public virtual void FireAmmo (Vector3 _firingDirection) {
		if(Time.time > activationTime && AvaliableAmmountToFire > 0) {//checks if time is greater than the activation time var
				activationTime = Time.time + nextActivate;//adds the nextActive var to time
			if(avaliableAmmo.Count-1 >= currentAmmoNum) {
				if(!avaliableAmmo[currentAmmoNum].gameObject.activeSelf) {

					switch(StaticVars.currentDirection) {
					case StaticVars.Direction.RIGHT:
						targetPosition.x = this.transform.position.x + firingDistance;
						break;

					case StaticVars.Direction.LEFT:
						targetPosition.x = this.transform.position.x - firingDistance;
						break;
					}

					Targets[currentAmmoNum].transform.position = targetPosition;
					avaliableAmmo[currentAmmoNum].transform.position = centerFiringPosition.position;
					avaliableAmmo[currentAmmoNum].Target = Targets[currentAmmoNum].gameObject;
					avaliableAmmo[currentAmmoNum].OnActivateAmmo();
					AvaliableAmmountToFire--;
					UpdateAmmoBar ();
					currentAmmoNum++;
				}
			} else {
				currentAmmoNum = 0;
			}
		}
	}

	void UpdateAmmoBar () {
		if (ChangeAmmoBar != null)
			ChangeAmmoBar (AvaliableAmmountToFire / startAvaliableAmmoToFire);
	}

	public virtual void OnTriggerEnter () {
		ifAvaliable = true;
		AddToAvaliableWeapons();
	}
}
