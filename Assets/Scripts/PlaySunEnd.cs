using UnityEngine;
using System.Collections;

public class PlaySunEnd : MonoBehaviour {

	public Animator sunAnim;

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += PlaySunAnim;
	}

	void OnDestroy () {
		EndGame.TurnOffGame -= PlaySunAnim;
	}
	
	// Update is called once per frame
	void PlaySunAnim () {
		sunAnim.SetBool ("End", true);
	}
}
