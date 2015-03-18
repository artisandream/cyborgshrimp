using UnityEngine;
using System.Collections;
using System;

public class SoundEffectsGasCan : MonoBehaviour {
	
	public AudioClip gasCanSound;

	void Start(){
		GetComponent<AudioSource>().clip = gasCanSound;
	}

	void Awake(){
		DontDestroyOnLoad(this.gameObject);
	}

	void OnEnable (){
		AddMoreFuel.PlayFuelSound += PlayGasCanSound;
		EndGame.TurnOffGame += TurnOffGasCanSound;
	}
	
	void PlayGasCanSound () {
		GetComponent<AudioSource>().Play ();
	}

	void TurnOffGasCanSound () {
		AddMoreFuel.PlayFuelSound -= PlayGasCanSound;
	}
}
