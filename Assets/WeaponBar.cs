using UnityEngine;
using System.Collections;
using System;

public class WeaponBar : MonoBehaviour {

	public static Action<WeaponBar> AddWeaponBar;

	// Use this for initialization
	void Start () {
		if (AddWeaponBar != null)
			AddWeaponBar (this);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
