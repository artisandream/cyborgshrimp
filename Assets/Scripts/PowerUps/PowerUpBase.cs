using UnityEngine;
using System.Collections;
using System;

public class PowerUpBase : MonoBehaviour {

	public int powerUpdate = 10;

	public enum PowerUpType {Health, Ammo, Shields}

	public Animator powerUpAnimator;
	
	public static Action<float> UpdateLevelEvent;

	// Use this for initialization
	void Start () {
		powerUpAnimator = this.GetComponent<Animator>();
	}

	void OnTriggerEnter () {
		GetComponent<BoxCollider>().enabled = false;
		powerUpAnimator.SetBool("Open", true);
		if(UpdateLevelEvent != null) {
			UpdateLevelEvent(powerUpdate);
		}
	}
}
