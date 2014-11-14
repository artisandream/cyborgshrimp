using UnityEngine;
using System.Collections;
using System;

public class EnemyAmmoControl : MonoBehaviour {

	public EffectSettings myEffect;

	public Action<EffectSettings> ResetAmmo;



	void CallRest (EffectSettings _e)
	{

	}

	void Awake () {
		myEffect.ResetAmmo += CallRest;
	}

}
