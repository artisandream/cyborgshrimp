using UnityEngine;
using System.Collections;

public class SoundSelectorMyFoxSound : MonoBehaviour {
	
	public static AudioClip userRecordedClip;
	
	void OnClick ( ) {

		SoundEffects.myFoxSound = userRecordedClip;

		audio.clip = userRecordedClip;
		audio.Play ();
	}
}
