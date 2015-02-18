using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;

public class ScoreKeeper : MonoBehaviour {

	public int score = 0;
	//public UILabel nguiLabel;
	//public UILabel highScoreLabel;
	public SimpleSQL.SimpleSQLManager dbManager;
	public List<ScoreClass> ScoreClassList;
	public static Action StartGamecenter;
	public static Action<int> SendToGameCenter;
	public static Action<int> SendToAchievements;

	public void RefreshList ()
	{
		foreach (ScoreClass _sc in ScoreClassList) {
		//	highScoreLabel.text = _sc.Points.ToString ("d");
			if(SendToGameCenter != null)
				SendToGameCenter(_sc.Points);
		}
	}

	void Start () {
		if(StartGamecenter != null)
			StartGamecenter();
		AddPoints.AddToScore += AddScore;
		EndGame.TurnOffGame += CheckHighScore;

		//might be a bug
		ScoreClassList = new List<ScoreClass> (from ps in dbManager.Table<ScoreClass> () select ps);

		RefreshList ();
	}
	
	void OnDestroy () {
		AddPoints.AddToScore -= AddScore;
		EndGame.TurnOffGame -= CheckHighScore;
	}

	void AddScore () 
	{
		score++;
		//nguiLabel.text = score.ToString("d");
		if(SendToAchievements != null)
			SendToAchievements(score);
	}

	public void CompareScores ()
	{
		foreach (ScoreClass _sc in ScoreClassList) {
			if (_sc.Points < score) {
				dbManager.Execute("UPDATE ScoreClass SET Points = ? WHERE PlayerID = ?", score, 1);
				RefreshList();
			}
		}
	}

	public void CheckHighScore () {
		OnDestroy();
		CompareScores();
	}
}