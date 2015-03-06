using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponMeleeClass : WeaponClass {
	
	public override void OnTriggerEnter () {
		base.OnTriggerEnter ();
		this.gameObject.layer = 14;
		this.enabled = false;
	}
}
