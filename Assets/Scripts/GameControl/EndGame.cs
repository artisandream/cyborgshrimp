using UnityEngine;
using System.Collections;
using System;

public class EndGame : MonoBehaviour
{
	public static Action TurnOffGame;
	public static Action<string> PlayZap;
	public static Func<bool, bool> EndGameBoolHandler; 
	
	bool OnEndGameBool (bool _b) {
		if(EndGameBoolHandler != null)
			EndGameBoolHandler(_b);

		return _b;
	}

	void OnTurnOffGame () {
		if(TurnOffGame != null)
			TurnOffGame();
	}
	
	void Start () {
		//EndGameInput
		HealthUpdater.HealthOut += OnEndGameBool;
		EscapePod.EndGameHandler += OnEndGameBool;
		//EndGameOutPut
		CharacterAdvanced.EndGameWithWin += OnTurnOffGame;
	}
}