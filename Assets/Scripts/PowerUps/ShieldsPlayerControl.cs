using UnityEngine;
using System.Collections;

public class ShieldsPlayerControl : MonoBehaviour {
	
	public Animator shieldsAnimator;
	public GameObject[] shieldObjects;
	public BoxCollider killZone;
	public float shieldRunTime = 5f;

	IEnumerator EndShields ()
	{
		yield return new WaitForSeconds(1f);
		foreach(GameObject _go in shieldObjects) {
			_go.SetActive(false);
		}
		killZone.enabled = (true);
	}

	IEnumerator DeactivateShields ()
	{
		yield return new WaitForSeconds(shieldRunTime);
		shieldsAnimator.SetBool("Open", false);
		StartCoroutine(EndShields());
	}

	void StartSields (float _supplyLevels)
	{
		foreach(GameObject _go in shieldObjects) {
			_go.SetActive(true);
		}
		killZone.enabled = (false);
		shieldsAnimator.SetBool("Open", true);
		StartCoroutine(DeactivateShields());
	}

	// Use this for initialization
	void Start () {
		shieldsAnimator = GetComponent<Animator>();
		PowerUpBase.UpdateLevelEvent += StartSields;
	}
}
