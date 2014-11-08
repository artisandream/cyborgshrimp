using UnityEngine;
using System.Collections;

public class EnemyAutoFire : MonoBehaviour {

	public GameObject[] enemyAmmo;

	// Use this for initialization
	void Start () {
		enemyAmmo [0].SetActive (true);
		EffectSettings.ResetAmmo += ResetAmmo;

	}

	IEnumerator Restart (GameObject _e) 

	{
		_e.transform.localPosition = this.transform.position;
		yield return new WaitForSeconds(1);
		Debug.Log("Restart");
		_e.SetActive (true);
	}

	void ResetAmmo (GameObject _go) {
		foreach (GameObject _e in enemyAmmo) {
			if(_go == _e)
				StartCoroutine ("Restart", _e);	
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
