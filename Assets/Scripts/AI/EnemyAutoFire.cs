﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyAutoFire : MonoBehaviour {

	public EffectSettings[] enemyAmmo;
	public List<EffectSettings> enemyAmmoList;
	//public float firingTime = 1;
	private int i = 0;
	//public bool canFire = false;
	public Animator EnemyAnimation;
	public Transform ammoStart;

	void StartAmmo (EffectSettings obj)
	{
		enemyAmmoList.Add(obj);
		EnemyAnimation.SetBool("Fire", true);
	}

	void AddAllToList ()
	{
		foreach (EffectSettings _e in enemyAmmo) {
			enemyAmmoList.Add(_e);
		}
	}

	void Fire ()
	{
		if (enemyAmmoList.Count > 0) {
			//canFire = true;

			enemyAmmoList [i].transform.position = ammoStart.transform.position;
			enemyAmmoList [i].gameObject.SetActive (true);
			enemyAmmoList.RemoveAt (0);
		} else {
			//canFire = false;
			EnemyAnimation.SetBool("Fire", false);
		}
	}

	void Awake () {
		enemyAmmoList = new List<EffectSettings> ();
		AddAllToList ();
		foreach (EffectSettings _e in enemyAmmoList) {
			_e.ResetAmmo += StartAmmo;
		}
	}

	void OnMouseDown () 
	{
		Fire ();
	}
}
