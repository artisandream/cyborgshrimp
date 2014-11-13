using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyAutoFire : MonoBehaviour {

	public EffectSettings[] enemyAmmo;
	public float firingTime = 1;
	
	void Awake () {
		StartCoroutine ("StartFiring");
		EffectSettings.ResetAmmo += ResetAmmo;
	}

	IEnumerator StartFiring ()
	{
		yield return new WaitForSeconds (firingTime);

		foreach (EffectSettings _es in enemyAmmo) {
			
			_es.gameObject.SetActive(true);
		}
	}

	IEnumerator Restart (EffectSettings _e) 

	{
		_e.transform.localPosition = this.transform.position;
		yield return new WaitForSeconds(firingTime);
		Debug.Log(_e.gameObject.name);
		_e.gameObject.SetActive (true);
	}

	void ResetAmmo (EffectSettings _go) {
		foreach (EffectSettings _e in enemyAmmo) {
			if(_go == _e)
				StartCoroutine ("Restart", _e);	
		}
	}
}
