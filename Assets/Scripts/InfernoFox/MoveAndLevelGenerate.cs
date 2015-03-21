using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveAndLevelGenerate : MonoBehaviour {
	
	public Transform thisMover;
	public List<EnableRecycle> avaliableToRecycle;
	public float gameSpeed = 2.1f;
	public float increasedSpeed = 0.017f;
	public float distance;
	public float nextDistance;
	public float maxDistance = 7;
	//public int nextLevelSet = 5;
	public Vector2 currentVector2;

	public virtual void Start () {
		//MoveCharacterViaArrowKeys.MoveCharacter += UpdateSpeed;
		StaticVars.currentLevel = LevelEnum.LevelChoice.LEVEL_1;
		//EndGame.TurnOffGame += TurnOff;
		//JumpAndFuelScript.JumpPlayer += IncreaseSpeed;
		EnableRecycle.EnableLevelEvent += AddToEnableList;
		//ReportAchievements.ChangeLevelAction += ChangeLevel;
	}

	
	void UpdateSpeed (float newSpeed)
	{
		//if(newSpeed >= 0)
		gameSpeed = newSpeed;
	}

	public virtual void OnDestroy () {
		//EndGame.TurnOffGame -= TurnOff;
		//JumpAndFuelScript.JumpPlayer -= IncreaseSpeed;
	}
	

	void ChangeLevel () {
		for (int i = 0 ; i<avaliableToRecycle.Count ; i++) {
			if(avaliableToRecycle[i].levelChoices != StaticVars.currentLevel) {
				avaliableToRecycle.RemoveAt(i);
			}
		}
	}

	public void AddToEnableList (EnableRecycle _eR, LevelEnum.LevelChoice _lc) {
		if(_lc == StaticVars.currentLevel) {
			avaliableToRecycle.Add(_eR);
		}
	}

	public void TurnOff () {
		this.enabled = false;
	}

	void IncreaseSpeed () {
		gameSpeed += increasedSpeed;
		if(distance < maxDistance) {
			distance += increasedSpeed;
		}
	}

	void Update () {
		thisMover.Translate(Vector3.right * Time.deltaTime *gameSpeed);
		if(thisMover.position.x > nextDistance) {
			NextGenerate ();
			nextDistance = thisMover.position.x + distance;
		} 
	}

	public virtual void NextGenerate () {
		if(avaliableToRecycle.Count > 0) {
			int randomLevelObjectNum = Random.Range(0, avaliableToRecycle.Count-1);
			currentVector2.x = nextDistance;
			currentVector2.y = 0;
			avaliableToRecycle[randomLevelObjectNum].transform.position = currentVector2;
			avaliableToRecycle[randomLevelObjectNum].canRecycle = false;
			avaliableToRecycle[randomLevelObjectNum].ToggleChildrenOnOff(true);
			avaliableToRecycle.RemoveAt(randomLevelObjectNum);
		}
	}
}
