using UnityEngine;
using System.Collections;
using System;

public class AmmoClass : EnemyWeaponFX {

	public static Action<AmmoClass> AddAmmoToList;

	public WeaponType.weaponSelection thisWeaponSelection;

	public override void Start () {
		base.Start ();
		if(AddAmmoToList != null)
			AddAmmoToList(this);
	}
	
	public void OnActivateAmmo () {
		this.gameObject.SetActive(true);
	}
}
