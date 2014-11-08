using UnityEngine;
using System.Collections;

public class EnemyAutoFire : MonoBehaviour {

	public EffectSettings[] enemyAmmo;

	// Use this for initialization
	void Start () {
		StartCoroutine ("StartFiring");
		//enemyAmmo [0].gameObject.SetActive (true);
		EffectSettings.ResetAmmo += ResetAmmo;
	}

	IEnumerator StartFiring ()
	{
		foreach (EffectSettings _es in enemyAmmo) {
			yield return new WaitForSeconds (0.25f);
			_es.gameObject.SetActive(true);
		}
	}


	IEnumerator Restart (EffectSettings _e) 

	{
		_e.transform.localPosition = this.transform.position;
		yield return new WaitForSeconds(0.001f);
		Debug.Log("Restart");
		_e.gameObject.SetActive (true);
	}

	void ResetAmmo (EffectSettings _go) {
		foreach (EffectSettings _e in enemyAmmo) {
			if(_go == _e)
				StartCoroutine ("Restart", _e);	
		}
	}
	
//	public float fireRate = 0.5F;
//	private float nextFire = 0.0F;
//	void Update() {
//		nextFire = Time.time + fireRate;
//		GameObject clone = Instantiate(projectile, transform.position, transform.rotation) as GameObject;
//	}
}
