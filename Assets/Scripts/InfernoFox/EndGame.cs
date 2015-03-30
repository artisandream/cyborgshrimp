using UnityEngine;
using System.Collections;
using System;

public class EndGame : MonoBehaviour
{
	public static Action TurnOffGame;
	public static Action<string> PlayZap;

	//raises the TurnOffGame action to end the game
	void EndThisGame ()
	{
		if(TurnOffGame != null)
			TurnOffGame();
	}

	//subscribes to the HealthUpdater HealthOut delegate and listens for health to drop below zero
	void Start () {
		HealthUpdater.HealthOut += EndThisGame;
	}
}