using UnityEngine;
using System.Collections;
using System;

public class AddPoints : MonoBehaviour {

	public static Action AddToScore;

	void OnTriggerEnter2D (Collider2D _c) {
		if(AddToScore != null) {
			AddToScore();
			this.gameObject.SetActive(false);
		}
	}
}
