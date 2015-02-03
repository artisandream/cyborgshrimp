using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class EnableRecycle : MonoBehaviour 
{
	public GameObject[] tileChildren;
	public LevelEnum.LevelChoice levelChoices;

	public static Action<EnableRecycle, LevelEnum.LevelChoice> EnableLevelEvent;
	public bool canRecycle = true;

	public void RecycleTransform (bool _b)
	{
		if(levelChoices == StaticVars.currentLevel) {
			if (EnableLevelEvent != null) {
				EnableLevelEvent (this, levelChoices);
				canRecycle = _b;
				//ToggleChildrenOnOff(false);
			}
		}
	}

	public void ToggleChildrenOnOff (bool _b) {
		foreach (GameObject _go in tileChildren) {
			_go.SetActive(_b);
		}
	}

	void Start () {
		ChangeLevel ();
		//addback when adding worlds
		//ReportAchievements.ChangeLevelAction += ChangeLevel;
	}

	void ChangeLevel () {
		RecycleTransform (false);
	}

	void OnDestroy ( ) {
		//addback when adding worlds
		//ReportAchievements.ChangeLevelAction -= ChangeLevel;
	}

	void OnTriggerEnter (Collider _c) {
		//addback when adding worlds
		//if (_c.gameObject.layer.ToString() == "RecycleEnabler") {
			Debug.Log (_c.gameObject.layer);
		//}
		bool setRecycle = false;
		if(levelChoices == StaticVars.currentLevel) 
			setRecycle = true;

		if(!canRecycle) {
			RecycleTransform (setRecycle);
		}

//		if(!canRecycle) {
//			RecycleTransform (true);
//		}
	}
}
