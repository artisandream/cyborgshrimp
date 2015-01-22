using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System;

public class ReportAchievements : MonoBehaviour {

	private Achievements localAchievements;
	public SimpleSQL.SimpleSQLManager achievementManager;
	public int currentScore = 0;

	public static Action ChangeLevelAction;

	void Start() {
		//ScoreKeeper.SendToAchievements += CheckAchievements;
		string sql = "SELECT * FROM Achievements";
		List<Achievements> dataAchievements = new List<Achievements>(achievementManager.Query<Achievements>(sql));
		localAchievements = dataAchievements[0];
	}

	void OnDestroy () {
		//ScoreKeeper.SendToAchievements -= CheckAchievements;
	}

	void CheckAchievements (int _currentScore) {

		//localAchievements = new Achievements();

		currentScore = _currentScore;

		switch (_currentScore) {

		case 2:
			StaticVars.currentLevel = LevelEnum.LevelChoice.LEVEL_2;
			if(ChangeLevelAction != null) 
				ChangeLevelAction();

			localAchievements.SuperGas = 1;
			break;
			
		case 35:
			localAchievements.Squirrel = 1;
			break;
			
		case 40:
			localAchievements.SuperGas2 = 1;
			break;
			
		case 50:
			localAchievements.GlowWorms = 1;
			break;
			
		case 55:
			localAchievements.FireBalls = 1;
			break;
			
		case 60:
			localAchievements.SuperGas3 = 1;
			break;
			
		case 70:
			localAchievements.LeapFrogs = 1;
			break;
			
		case 75:
			localAchievements.DeathByMonkeys = 1;
			break;
			
		case 80:
			localAchievements.ShieldsAtMaximum = 1;
			break;
			
		case 90:
			localAchievements.GlowWorms2 = 1;
			break;
			
		case 100:
			localAchievements.ShieldsAtMaximum2 = 1;
			break;
			
		case 150:
			localAchievements.ShieldsAtMaximum3 = 1;
			break;
		}

		achievementManager.UpdateTable(localAchievements);
//		Reset Acchievements
//		foreach(PropertyInfo pi in localAchievements.GetType().GetProperties()) {
//			Debug.Log (pi.GetValue(localAchievements, null));
//		}
	}

	//		Reset Acchievements
//	void SendAchievements (LevelEnum.LevelChoice _lc) {
//		if(ChangeLevelAction != null) {
//			ChangeLevelAction(_lc, true);
//		}
//	}

	void ResetAchievements () {
		foreach(PropertyInfo pi in localAchievements.GetType().GetProperties()) {
			pi.SetValue(localAchievements, 0, null);
			achievementManager.UpdateTable(localAchievements);
		}
	}
}
