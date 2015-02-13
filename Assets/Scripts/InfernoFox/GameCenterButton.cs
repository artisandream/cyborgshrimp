using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class GameCenterButton : MonoBehaviour 
{
	public static Action OpenLeaderBoard;

	void OnClick () {
		if(OpenLeaderBoard != null)
			OpenLeaderBoard();
	}
}
