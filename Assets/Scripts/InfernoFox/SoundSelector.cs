using UnityEngine;
using System.Collections;

public class SoundSelector : MonoBehaviour {

	public AudioClip userSelectedSound;

	void OnClick ( ) {
		SoundEffects.myFoxSound = userSelectedSound;
		audio.clip = userSelectedSound;
		audio.Play();
	}
}