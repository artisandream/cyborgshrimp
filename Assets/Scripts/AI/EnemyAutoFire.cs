using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyAutoFire : MonoBehaviour {

	//public EffectSettings[] enemyAmmo;
	public List<EffectSettings> activeAmmo;
	public float firingTime = 1;

	void AddToAmmoList (EffectSettings obj)
	{
		activeAmmo.Add (obj);
	}

	void Awake () {
		EffectSettings.AddToAmmoList += AddToAmmoList;
		StartCoroutine ("StartFiring");
		EffectSettings.ResetAmmo += ResetAmmo;
		activeAmmo = new List<EffectSettings> ();
	}

	IEnumerator StartFiring ()
	{
		yield return new WaitForSeconds (firingTime);
		Debug.Log("start");
		if(activeAmmo.Count > 1) 
		{
			Debug.Log("now");
			activeAmmo[0].gameObject.SetActive(true);
			//activeAmmo.RemoveAt(0);
		}
//		foreach (EffectSettings _es in activeAmmo) {
			
//			_es.gameObject.SetActive(true);
//		}
	}

	IEnumerator Restart (EffectSettings _e) 

	{
		_e.transform.localPosition = this.transform.position;
		yield return new WaitForSeconds(firingTime);
		Debug.Log(_e.gameObject.name);
		_e.gameObject.SetActive (true);
	}

	void ResetAmmo (EffectSettings _go) {
		foreach (EffectSettings _e in activeAmmo) {
			if(_go == _e)
				StartCoroutine ("Restart", _e);	
		}
	}
}
