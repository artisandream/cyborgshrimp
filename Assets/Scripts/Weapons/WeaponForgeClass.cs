﻿using UnityEngine;
using System.Collections;

public class WeaponForgeClass : WeaponClass
{
		public GameObject laserBeam;
		public float waitTime = 0.25f;

		IEnumerator EndLaserFX ()
		{
				yield return new WaitForSeconds (waitTime);
				laserBeam.SetActive (false);
		}
	
		public override void ReturnFire (WeaponType.weaponSelection _ws)
		{
				if (_ws == thisWeaponSelection) {
						laserBeam.SetActive (true);
						AvaliableAmmountToFire--;
						UpdateAmmoBar ();
						StartCoroutine (EndLaserFX ());
				}
		}

		public override void FireAmmo ()

		{
				if (Time.time > activationTime) {//checks if time is greater than the activation time var

						if (CallFireAnim != null) {
								CallFireAnim (thisWeaponSelection);
						}
						activationTime = Time.time + nextActivate;//adds the nextActive var to time
				}
		}
}