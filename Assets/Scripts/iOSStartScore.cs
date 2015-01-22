using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;

public class iOSStartScore : MonoBehaviour {
	
	public UILabel highScoreLabel;
	public SimpleSQL.SimpleSQLManager dbManager;
	private string scoreName = "IFHighScore";
	private List<ScoreClass> ScoreClassList;
	public static Action<ScoreClass> SendScore;

	static void SendScoreToSocial (ScoreClass _sc)
	{
		if (SendScore != null) {
			SendScore (_sc);
		}
	}

	void StartGameCenter ()
	{
		GameCenterManager.init ();
	}

	void SendScoreToGameCenter (int _p)
	{
		GameCenterManager.reportScore (_p, scoreName);
	}

	void Start () {
		ScoreKeeper.StartGamecenter += StartGameCenter;
		ScoreKeeper.SendToGameCenter += SendScoreToGameCenter;
		StartGameCenter ();
		GameCenterManager.dispatcher.addEventListener (GameCenterManager.GAME_CENTER_LEADER_BOARD_SCORE_LOADED, OnLeaderBoardScoreLoaded);
		GameCenterManager.getScore(scoreName);
		GameCenterButton.OpenLeaderBoard += OpenGameCenterWindow;
		ScoreClassList = new List<ScoreClass> (from ps in dbManager.Table<ScoreClass> () select ps);
		foreach (ScoreClass _sc in ScoreClassList) {
			highScoreLabel.text = _sc.Points.ToString("d");
			SendScoreToGameCenter (_sc.Points);
			SendScoreToSocial (_sc);
		}
	}

	void OnDestroy () {
		GameCenterButton.OpenLeaderBoard -= OpenGameCenterWindow;
	}

	void OpenGameCenterWindow ()
	{
		GameCenterManager.showLeaderBoard (scoreName);
	}

	public void OnClick() {
		OpenGameCenterWindow ();
	}
	
	private void OnLeaderBoardScoreLoaded(CEvent e) {
		LeaderBoardScoreData data = e.data as LeaderBoardScoreData; //get score from the data
		foreach (ScoreClass _sc in ScoreClassList) {
			if(int.Parse(data.leaderBoardScore) >= _sc.Points) { //if the GC board is greater
				dbManager.Execute("UPDATE ScoreClass SET Points = ? WHERE PlayerID = ?", int.Parse(data.leaderBoardScore), 1);
				highScoreLabel.text = data.leaderBoardScore;
			} else {
				SendScoreToGameCenter(_sc.Points);//else report the higher score to GC
				highScoreLabel.text = _sc.Points.ToString("d");
			}
			SendScoreToSocial(_sc);
		}
	}
}
