using UnityEngine;
using System.Collections;
using System;

public class WeaponBar : MonoBehaviour {

	public static Action<WeaponBar> AddWeaponBar;
	public Vector3 ammoBarScale;
	public RectTransform thisRectTransform;

	// Use this for initialization
	void Start () {
		thisRectTransform = this.GetComponent<RectTransform> ();
		if (AddWeaponBar != null)
			AddWeaponBar (this);
	}

	public void UpdateAmmoBar (float _f) {
		ammoBarScale.x = _f;
		thisRectTransform.localScale = ammoBarScale;
	}
}
