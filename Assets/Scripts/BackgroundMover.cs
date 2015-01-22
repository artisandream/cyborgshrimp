// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BackgroundMover : MoveAndLevelGenerate 
{
	//Not Using Script
	public override void Start () {
		//avaliableLevelObjects = new List<Transform>();
		EndGame.TurnOffGame += TurnOff;
//		BackgroundRecycle.BackgroundEvent += AddToEnableList;
	}
	
	public override void OnDestroy () {
		EndGame.TurnOffGame -= TurnOff;
//		BackgroundRecycle.BackgroundEvent -= AddToEnableList;
	}
	
	public override void NextGenerate () {
		if(avaliableToRecycle.Count > 0) {
			int randomLevelObjectNum = Random.Range(0, avaliableToRecycle.Count-1);
			currentVector2.x = nextDistance;
			currentVector2.y = 0;
			avaliableToRecycle[randomLevelObjectNum].transform.position = currentVector2;
			avaliableToRecycle[randomLevelObjectNum].GetComponent<EnableRecycle>().canRecycle = false;
			avaliableToRecycle[randomLevelObjectNum].transform.GetChild(0).gameObject.SetActive(true);
			avaliableToRecycle.RemoveAt(randomLevelObjectNum);
		}
	}
}
