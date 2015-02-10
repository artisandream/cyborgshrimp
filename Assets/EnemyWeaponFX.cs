using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class EnemyWeaponFX : EffectSettings {

	public Action<EnemyWeaponFX> ResetAmmo;

	public override void OnEffectDeactivatedHandler ()
	{
		base.OnEffectDeactivatedHandler ();

			if (ResetAmmo != null) {
				ResetAmmo (this);
			}
	}

}
