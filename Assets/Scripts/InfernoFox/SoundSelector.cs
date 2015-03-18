using UnityEngine;
using System.Collections;

public class SoundSelector : MonoBehaviour {

	public AudioClip userSelectedSound;

	void OnClick ( ) {
		SoundEffects.myFoxSound = userSelectedSound;
		GetComponent<AudioSource>().clip = userSelectedSound;
		GetComponent<AudioSource>().Play();
	}
}