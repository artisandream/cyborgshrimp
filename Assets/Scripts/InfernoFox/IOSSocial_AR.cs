////////////////////////////////////////////////////////////////////////////////
//  
// @module IOS Native Plugin for Unity3D 
// @author Osipov Stanislav (Stan's Assets) 
// @support stans.assets@gmail.com 
//
////////////////////////////////////////////////////////////////////////////////


using UnityEngine;
using System.Collections;

public class IOSSocial_AR : MonoBehaviour {

	private string myMessage;

	void Awake() {
		//IOSNative
		iOSStartScore.SendScore += PrepSocial;
		TweetButton.SendTweet += TweetIt;
		FacebookButton.SendFacebook += FaceBookIt;
	}

	void OnDestroy () {
		iOSStartScore.SendScore += PrepSocial;
		TweetButton.SendTweet -= TweetIt;
		FacebookButton.SendFacebook -= FaceBookIt;
	}
	
	void PrepSocial (ScoreClass _sc) {
		myMessage = "#whatDoesYourFoxSay, I got a new high-score of " + _sc.Points + " in #InfernoFox http://infernofox.com";
	}

	public void TweetIt () {
		StartCoroutine(PostTwitterScreenshot());
	}
		
	public void FaceBookIt () {
		StartCoroutine(PostFBScreenshot());
	}
	
	public IEnumerator PostTwitterScreenshot() {
		yield return new WaitForEndOfFrame();
		// Create a texture the size of the screen, RGB24 format
		int width = Screen.width;
		int height = Screen.height;
		Texture2D tex = new Texture2D( width, height, TextureFormat.RGB24, false );
		// Read screen contents into the texture
		tex.ReadPixels( new Rect(0, 0, width, height), 0, 0 );
		tex.Apply();
		
		IOSSocialManager.instance.TwitterPost(myMessage, tex);
		
		Destroy(tex);
		
	}

	public IEnumerator PostFBScreenshot() {
		yield return new WaitForEndOfFrame();
		// Create a texture the size of the screen, RGB24 format
		int width = Screen.width;
		int height = Screen.height;
		Texture2D tex = new Texture2D( width, height, TextureFormat.RGB24, false );
		// Read screen contents into the texture
		tex.ReadPixels( new Rect(0, 0, width, height), 0, 0 );
		tex.Apply();
		
		IOSSocialManager.instance.FacebookPost(myMessage, tex);
		Destroy(tex);
	}
}

