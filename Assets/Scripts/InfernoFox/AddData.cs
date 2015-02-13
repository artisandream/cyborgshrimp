// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class AddData : MonoBehaviour 
{
	public UILabel scoreLabel;
	public SimpleSQL.SimpleSQLManager dbManager;
	private List<ScoreClass> ScoreClassList;

	void Start () {
		DebugData();
	}

	void CreateBDTables () {
		dbManager.CreateTable<ScoreClass>();
	}

	void UbdateData () {
		ScoreClass _ps = new ScoreClass{PlayerID = 1, Points = 3};
		dbManager.UpdateTable(_ps);
	}
	
	private void DebugData ()
	{
		ScoreClassList = new List<ScoreClass> (from ps in dbManager.Table<ScoreClass> () select ps);
		scoreLabel.text = ScoreClassList[0].Points.ToString("d");
	}
}
