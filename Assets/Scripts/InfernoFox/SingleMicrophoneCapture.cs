using UnityEngine;
using System.Collections;

[RequireComponent (typeof (AudioSource))]

public class SingleMicrophoneCapture : MonoBehaviour 
{
	//A boolean that flags whether there's a connected microphone
	private bool micConnected = false;
	//public UILabel recordLabel;

	//The maximum and minimum available recording frequencies
	private int minFreq;
	private int maxFreq;
	
	public AudioClip metronomeSound;
	public AudioClip myFoxSound;
	public AudioClip mySavedFileSound;

	//public UISlider audioSlider;
	private bool canUpdateSlider;
	//public UIButton myRecordButton;

	void Start() 
	{

		//Check if there is at least one microphone connected
		if(Microphone.devices.Length <= 0)
		{
			//Throw a warning message at the console if there isn't
			Debug.LogWarning("Microphone not connected!");
		}
		else //At least one microphone is present
		{
			//Set 'micConnected' to true
			micConnected = true;
			
			//Get the default microphone recording capabilities
			Microphone.GetDeviceCaps(null, out minFreq, out maxFreq);
			
			//According to the documentation, if minFreq and maxFreq are zero, the microphone supports any frequency...
			if(minFreq == 0 && maxFreq == 0)
			{
				//...meaning 44100 Hz can be used as the recording sampling rate
				maxFreq = 44100;
			}
		}
	}

	void OnClick ()
	{
		RecordSound ();
	}

	void RecordSound()
	{
		if(micConnected)
		{
			if(!Microphone.IsRecording(null))
			{

				StartCoroutine(RecordAndSave());

			}
		}
	}

	IEnumerator RecordAndSave() {
		//Disable the button
		this.GetComponent<BoxCollider>().enabled = false;
		//myRecordButton.defaultColor = Color.green;
//		recordLabel.text = "Wait for It...";

		//Stop the Background Music
		BackgroundMusic.StopMusic(); // ****** Turn back on after testing *******

		//Mentronome
		GetComponent<AudioSource>().clip = metronomeSound;
		GetComponent<AudioSource>().Play ();
		yield return new WaitForSeconds(2);
//		recordLabel.text = "Go! Go! Go!";
//		myRecordButton.defaultColor = Color.red;
		//yield return new WaitForSeconds(0.05f);
		//Start Recording
//		audioSlider.value = 0;
		mySavedFileSound = Microphone.Start(null, true, 1, maxFreq);

		//Add Start Progress Bar
		canUpdateSlider = true;

		yield return new WaitForSeconds(1);
//		recordLabel.text = "Record";
//		myRecordButton.defaultColor = Color.white;
		//End Recording
		Microphone.End(null); //Stop the audio recording

		//Playback Recording
	    GetComponent<AudioSource>().clip = mySavedFileSound;
		GetComponent<AudioSource>().Play(); 

		//Move Sound into MySound Button
		SoundSelectorMyFoxSound.userRecordedClip = mySavedFileSound;

		//Make the recorded sound the selected sound
		SoundEffects.myFoxSound = mySavedFileSound;

		//Turn on background Music
		BackgroundMusic.StartMusic();

		//Save Recording - Add later

		//enable the record button
		this.GetComponent<BoxCollider>().enabled = true;
	}

	void FixedUpdate () {
		if(canUpdateSlider) {
	//		if(audioSlider.value <= 1) {
	//			audioSlider.value += 0.033333333f;
	//		}
	//		if(audioSlider.value == 1)
	//			canUpdateSlider = false;
		}
	}
}