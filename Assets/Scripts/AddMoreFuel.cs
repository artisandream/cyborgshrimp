using UnityEngine;
using System.Collections;
using System;

public class AddMoreFuel : MonoBehaviour {
	
	public static Action AddMoreFuelAction;
	public static Action PlayFuelSound;
	
	void OnTriggerEnter2D ( ) {
		if(AddMoreFuelAction != null){
			AddMoreFuelAction();
			this.gameObject.SetActive(false);
		}
		
		if(PlayFuelSound != null){
			PlayFuelSound();
		}
	}
} 