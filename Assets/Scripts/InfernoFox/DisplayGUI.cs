using UnityEngine;
using System.Collections;
using System;

public class DisplayGUI : MonoBehaviour {

	private Animator guiAnim;
	public ParticleSystem endExplosion;
	public float reloadTime = 3;

	public static Action LoadAd;

	void OnEnable () {
		guiAnim = transform.GetComponent<Animator>();
		EndGame.TurnOffGame += EndThisGame;
	}

	void OnDestroy () {
		EndGame.TurnOffGame -= EndThisGame;
	}

	void EndThisGame ()
	{
		EndGame.TurnOffGame -= EndThisGame;
		endExplosion.GetComponent<Renderer>().sortingLayerName = "Foreground";
		endExplosion.Play();
		StartCoroutine(RunGUI());
	}

	IEnumerator RunGUI() {
		yield return new WaitForSeconds(reloadTime);
		guiAnim.SetBool ("Restart", true);
		if(LoadAd != null) {
			LoadAd();
		}
	}
}
