using UnityEngine;
using System.Collections;
using System;

public class WinGameOnEnter : MonoBehaviour {

	public static Action WinGameAction;

	public GameObject FXOff;

	void OnWinGame ()
	{
		FXOff.SetActive (true);
		print ("EndWin");

		if(WinGameAction != null) {
			WinGameAction();
		}
	}

	void OnTriggerEnter () {
		OnWinGame ();
	}
}
