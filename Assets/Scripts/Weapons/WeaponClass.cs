using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponClass : MonoBehaviour
{

	public List<AmmoClass> avaliableAmmo;
	public Action<float> ChangeAmmoBar;
	public List<GameObject> Targets;
	public int numberOfTargets = 3;
	public static Action<WeaponClass> AddWeaponToList;
	public static Action<WeaponType.weaponSelection> CallFireAnim;
	public static Action CallBlankAnim;
	public bool ifAvaliable = false;
	public int currentAmmoNum = 0;
	public int ammoPower = 1;
	public float AvaliableAmmountToFire = 10;
	public float setRotation = 0;
	private float startAvaliableAmmoToFire;
	public int firingDistance = 10;
	private Vector3 targetPosition;
	public Transform centerFiringPosition;
	public GameObject AddedFX;
	public WeaponAttachPoint.AttachType KindOfWeapon;
	public float nextActivate = 2.0F;//the next time the ammo "fires" or is activated
	public float activationTime = 0.0F;//the current time that is a contiuously changing var adding the time to the nextActive var
	
	public WeaponType.weaponSelection thisWeaponSelection;

	void EndFX(WeaponType.weaponSelection _ws)
	{
		if (_ws == thisWeaponSelection) {
			AddedFX.SetActive(false);
		}
	}

	void AddBackToAvaliableAmmo (float _supplyLevels)
	{
		print (_supplyLevels);
		AvaliableAmmountToFire += _supplyLevels;
		print (AvaliableAmmountToFire);
		if(AvaliableAmmountToFire > startAvaliableAmmoToFire) {
			AvaliableAmmountToFire = startAvaliableAmmoToFire;
			print (AvaliableAmmountToFire);
		}
		UpdateAmmoBar();
	}

	public virtual void AddToAvaliableWeapons()
	{
		if (AddWeaponToList != null) 
			AddWeaponToList(this);

		PowerUpBase.UpdateLevelEvent += AddBackToAvaliableAmmo;
		PlayerAnimStates.ReturnFire += ReturnFire;
		PlayerAnimStates.EndReturnFire += EndFX;
		this.GetComponent<BoxCollider>().enabled = false;
	}

	void AddToTargetList(GameObject obj)
	{
		for (int i = 1; i <= numberOfTargets; i++) {
			Targets.Add(obj);
		}
	}

	void Awake()
	{
		avaliableAmmo = new List<AmmoClass>();
		AmmoClass.AddAmmoToList += AddAmmo;
		AddAsWeaponsTarget.AddToTargetList += AddToTargetList;
		startAvaliableAmmoToFire = AvaliableAmmountToFire;
	}

	IEnumerator StartLate()
	{
		yield return new WaitForSeconds(0.1f);

		if (ifAvaliable) {
			AddToAvaliableWeapons();
		}
	}

	public virtual void Start()
	{
		StartCoroutine(StartLate());
	}

	void AddAmmo(AmmoClass _a)
	{
		if (_a.thisWeaponSelection == thisWeaponSelection) {
			avaliableAmmo.Add(_a);
		}
	}

	IEnumerator TurnOffMuzzleFlash()
	{
		yield return new WaitForSeconds(0.1f);
		AddedFX.SetActive(false);
	}
	
	void StartMuzzleFlash()
	{
		AddedFX.SetActive(true);
	}

	public virtual void ReturnFire(WeaponType.weaponSelection _ws)
	{
		if (AddedFX != null) 
			StartMuzzleFlash();

		if (_ws == thisWeaponSelection) {
			targetPosition.z = this.transform.position.z;
			switch (StaticVars.currentDirection) {
				case StaticVars.Direction.RIGHT:
					targetPosition.x = this.transform.position.x + firingDistance;
					break;
				case StaticVars.Direction.LEFT:
					targetPosition.x = this.transform.position.x - firingDistance;
					break;
			}

			Targets [currentAmmoNum].transform.position = targetPosition;
			avaliableAmmo [currentAmmoNum].transform.position = centerFiringPosition.position;
			avaliableAmmo [currentAmmoNum].Target = Targets [currentAmmoNum].gameObject;
			avaliableAmmo [currentAmmoNum].OnActivateAmmo();
			AvaliableAmmountToFire--;
			UpdateAmmoBar();
			currentAmmoNum++;
		}
	}
	
	public virtual void FireAmmo()
	{
		if (Time.time > activationTime && AvaliableAmmountToFire > 0) {//checks if time is greater than the activation time var
			if (avaliableAmmo.Count > currentAmmoNum) {
				if (!avaliableAmmo [currentAmmoNum].gameObject.activeSelf && CallFireAnim != null) {
					CallFireAnim(thisWeaponSelection);
				} 
			} else {
				currentAmmoNum = 0;
			}
			activationTime = Time.time + nextActivate;//adds the nextActive var to time
		} 

		if (AvaliableAmmountToFire == 0) {
			if (CallBlankAnim != null)
				CallBlankAnim();
		}
	}

	public void UpdateAmmoBar()
	{
		if (ChangeAmmoBar != null)
			ChangeAmmoBar(AvaliableAmmountToFire / startAvaliableAmmoToFire);
	}

	public virtual void OnTriggerEnter()
	{
		ifAvaliable = true;
		AddToAvaliableWeapons();
	}
}
