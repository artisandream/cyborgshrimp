// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class TweetButton : MonoBehaviour 
{
	public static Action SendTweet;
	
	void OnClick () {
		if(SendTweet != null)
			SendTweet();
	}
}
