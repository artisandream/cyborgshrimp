using UnityEngine;
using System.Collections;
using System;

public class EscapePod : MonoBehaviour {

	public static Func<bool, bool> EndGameHandler;

	public GameObject FXOff;

	void OnEndGame ()
	{
		FXOff.SetActive (true);

		if(EndGameHandler != null) {
			EndGameHandler(true);
		}
	}

	void OnTriggerEnter () {
		OnEndGame ();
	}
}
