using UnityEngine;
using System.Collections;

public class SoundsBackgroundToggle : MonoBehaviour {

	void OnClick(){

		if(BackgroundMusic.musicToggle == "Start"){
			BackgroundMusic.userSetMusicTo = "off";
			BackgroundMusic.StopMusic();
		}
		else {
			BackgroundMusic.userSetMusicTo = "on";
			BackgroundMusic.StartMusic();
		}
	}
}
