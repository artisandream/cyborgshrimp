using UnityEngine;
using System.Collections;
using System;

public class HealthUpdater : MonoBehaviour {

	public Vector3 updateScale;
	public static Func<bool, bool> HealthOut;

	void UpdateHealth (float _ammoPower)
	{
		if (StaticVars.player1Health > 0) {
			StaticVars.player1Health -= _ammoPower;
			updateScale.x = StaticVars.player1Health;
			this.transform.localScale = updateScale;
		} else {
			//CharacterHealth.UpdateHealth -= UpdateHealth;

			if(HealthOut != null)
				HealthOut(false);
		}
	}
	// Use this for initialization
	void Start () {
		CharacterHealthKiller.UpdateHealth += UpdateHealth;
		EnemyMeleeOnAnimator.MeleeEvent += UpdateHealth;
		updateScale.x = 1;
		updateScale.y = 1;
		updateScale.z = 1;
	}
}
