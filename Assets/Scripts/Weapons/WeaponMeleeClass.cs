using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponMeleeClass : WeaponClass
{

	public BoxCollider thisCollider;
	public bool canMelee = false;
	public int emmissionAmount = 300;

	public override void Start ()
	{
		base.Start ();
		thisCollider = this.GetComponent<BoxCollider> ();


		if (ifAvaliable) {
			thisCollider.enabled = false;
			SetLayerPrepForMelee ();
		}
	}

	void SetLayerPrepForMelee ()
	{
		canMelee = true;
		this.gameObject.layer = 14;
		thisCollider.enabled = false;
	}

	public override void OnTriggerEnter ()
	{
		if (!canMelee) {
			base.OnTriggerEnter ();
		}
		SetLayerPrepForMelee ();
	}

	public virtual IEnumerator DisableCollider ()
	{
		yield return new WaitForSeconds (1f);
		thisCollider.enabled = false;
	}

	public override void FireAmmo ()
	{
		if (Time.time > activationTime) {//checks if time is greater than the activation time var
			thisCollider.enabled = true;
			StartCoroutine (RunFX ());

			if (CallFireAnim != null)
				CallFireAnim (thisWeaponSelection);

			StartCoroutine (DisableCollider ());
			activationTime = Time.time + nextActivate;//adds the nextActive var to time
		}
	}

	public ParticleSystem FX;
	public float waitTime = 0.1f;
	
	public virtual IEnumerator RunFX ()
	{
		yield return new WaitForSeconds (waitTime);
		FX.Emit (emmissionAmount);
	}
}
