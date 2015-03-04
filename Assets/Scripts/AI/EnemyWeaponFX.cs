using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class EnemyWeaponFX : EffectSettings {

	public Action<EnemyWeaponFX> ResetAmmo;

	//public float ammoPower = 0.1f;

	public override void OnEffectDeactivatedHandler ()
	{
		base.OnEffectDeactivatedHandler ();

			if (ResetAmmo != null) {
				ResetAmmo (this);
		}
	}

	public IEnumerator StartLate () {
		yield return new WaitForSeconds (0.01f);
		this.gameObject.SetActive (false);
	}

	public virtual void Start () {
		StartCoroutine (StartLate ());
	}
	
}
