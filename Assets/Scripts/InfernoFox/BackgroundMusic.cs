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
			GetComponent<AudioSource>().Stop();
			if(instance.GetComponent<AudioSource>().clip != GetComponent<AudioSource>().clip)
			{
				instance.GetComponent<AudioSource>().clip = GetComponent<AudioSource>().clip;
				instance.GetComponent<AudioSource>().volume = GetComponent<AudioSource>().volume;
				instance.GetComponent<AudioSource>().Play();
			}
			
			Destroy(this.gameObject);
			return;
		} 
		instance = this;
		GetComponent<AudioSource>().Play ();
		DontDestroyOnLoad(this.gameObject);
	}

	public static void StopMusic(){
		
		instance.GetComponent<AudioSource>().Stop();
		musicToggle = "Stop";
		
	}
	
	public static void StartMusic(){
		if(userSetMusicTo == "on"){
			instance.GetComponent<AudioSource>().Play();
			musicToggle = "Start";
		}
	}
}