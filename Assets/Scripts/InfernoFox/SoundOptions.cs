using UnityEngine;
using System.Collections;
using System;

public class SoundOptions : MonoBehaviour {

	public string level;
	public static Action TurnOffGasCanSound;

	void OnClick () {

		if(TurnOffGasCanSound != null)
			TurnOffGasCanSound();

		Application.LoadLevel(level);
	}
}
