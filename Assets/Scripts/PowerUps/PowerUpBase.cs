using UnityEngine;
using System.Collections;

public class PowerUpBase : MonoBehaviour {

	public Animator powerUpAnimator;
	public int powerUpdate = 10;

	public enum PowerUpType {Health, Ammo, Shields}

	public delegate void UpdateLevels (float _supplyLevels);
	public static event UpdateLevels UpdateLevelEvent;

	// Use this for initialization
	void Start () {
		powerUpAnimator = this.GetComponent<Animator>();
	}

	void OnTriggerEnter () {
		powerUpAnimator.SetBool("Open", true);

		if(UpdateLevelEvent != null) {
			UpdateLevelEvent(powerUpdate);
		}
	}

}
