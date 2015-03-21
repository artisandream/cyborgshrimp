using UnityEngine;
using System.Collections;
using System;

public class HealthUpdater : MonoBehaviour {

	public Vector3 updateScale;
	public static Action HealthOut;

	void UpdateHealth (float _ammoPower)
	{
		if (StaticVars.player1Health > 0) {
			StaticVars.player1Health -= _ammoPower;
			updateScale.x = StaticVars.player1Health;
			this.transform.localScale = updateScale;
		} else {
			//CharacterHealth.UpdateHealth -= UpdateHealth;

			if(HealthOut != null)
				HealthOut();
		}
	}
	// Use this for initialization
	void Start () {
		//CharacterHealth.UpdateHealth += UpdateHealth;
		CharacterHealthKiller.UpdateHealth += UpdateHealth;
		EnemyMeleeOnAnimator.MeleeEvent += UpdateHealth;
		updateScale.x = 1;
		updateScale.y = 1;
		updateScale.z = 1;
		//float _screenTop = Screen.height*0.5F-20;
		//this.transform.localPosition = new Vector3(0, _screenTop, 0 );
	}
}
