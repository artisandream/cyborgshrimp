using UnityEngine;
using System.Collections;

public class WeaponForgeClass : WeaponClass
{

	public float waitTime = 0.25f;
	
	public override void ReturnFire(WeaponType.weaponSelection _ws)
	{
		if (_ws == thisWeaponSelection) {
			AddedFX.SetActive(true);
			AvaliableAmmountToFire--;
			UpdateAmmoBar();
			//StartCoroutine(EndLaserFX());
		}
	}

	public override void FireAmmo()
	{
		if (Time.time > activationTime) {//checks if time is greater than the activation time var
			if (AvaliableAmmountToFire > 0) {
				if (CallFireAnim != null) {
					CallFireAnim(thisWeaponSelection);
				} 
			} 
			activationTime = Time.time + nextActivate;//adds the nextActive var to time
		}

		if (AvaliableAmmountToFire == 0){
			if (CallBlankAnim != null)
				CallBlankAnim();
		}
	}
}
