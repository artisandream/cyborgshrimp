using UnityEngine;
using System.Collections;
using System;

public class EndGame : MonoBehaviour
{
	//Legacy
	public static Action TurnOffGame;
	public static Action<string> PlayZap;


	void EndThisGame ()
	{
		if(TurnOffGame != null)
			TurnOffGame();
	}

	void Start () {
		HealthUpdater.HealthOut += EndThisGame;
	}
}