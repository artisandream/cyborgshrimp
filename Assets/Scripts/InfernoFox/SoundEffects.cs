using UnityEngine;
using System.Collections;

public class SoundEffects : MonoBehaviour {

	public bool boomSoundStarted = false;
	public AudioClip[] boomSound;
	public static int soundNumber;
	public AudioClip initialFoxSound;
	public static AudioClip myFoxSound;
	
	void Awake(){
		DontDestroyOnLoad(this.gameObject);
	}

	void OnEnable (){
		EndGame.PlayZap += PlayExplosionSound;
		JumpAndFuelScript.JumpPlayer += PlayJumpSound;
	}

	void OnDestory (){
		EndGame.PlayZap -= PlayExplosionSound;
		JumpAndFuelScript.JumpPlayer -= PlayJumpSound;
	}

	public void PlayExplosionSound (string _WhatDidTheFoxHit) {

		if (boomSoundStarted == false){
			if(_WhatDidTheFoxHit == "Strike"){
				GetComponent<AudioSource>().clip = boomSound[1];
			}
			else{
				GetComponent<AudioSource>().clip = boomSound[0];
			}
			GetComponent<AudioSource>().Play ();
			boomSoundStarted = true;
		}
	}
	
	public void PlayJumpSound () {
		
		if (boomSoundStarted == false){
			if(myFoxSound == null){
				myFoxSound = initialFoxSound;
			}

			GetComponent<AudioSource>().clip = myFoxSound;
			GetComponent<AudioSource>().Play ();
		}
	}
}