using UnityEngine;
using System.Collections;

public class BackgroundMusic : MonoBehaviour {

// Create a singleton for the background music so it will only be instanciated 1 time.

	private static BackgroundMusic instance = null;
	public static string userSetMusicTo = "on";
	public static string musicToggle = "Start";
	
	public static BackgroundMusic Instance {
		get { return instance; }
	}
	
	void Awake() 
	{

		if (instance != null && instance != this) 
		{
			audio.Stop();
			if(instance.audio.clip != audio.clip)
			{
				instance.audio.clip = audio.clip;
				instance.audio.volume = audio.volume;
				instance.audio.Play();
			}
			
			Destroy(this.gameObject);
			return;
		} 
		instance = this;
		audio.Play ();
		DontDestroyOnLoad(this.gameObject);
	}

	public static void StopMusic(){
		
		instance.audio.Stop();
		musicToggle = "Stop";
		
	}
	
	public static void StartMusic(){
		if(userSetMusicTo == "on"){
			instance.audio.Play();
			musicToggle = "Start";
		}
	}
}