using UnityEngine;
using System.Collections;
using System;

public class HealthUIPlacement : MonoBehaviour {

	public Vector3 updateScale;
	public static Action HealthOut;

	void UpdateHealth ()
	{
		if (StaticVars.player1Health > 0) {
			StaticVars.player1Health -= 0.1f;
			Debug.Log (StaticVars.player1Health);
			updateScale.x = StaticVars.player1Health;
			this.transform.localScale = updateScale;
		} else {
			CharacterHealth.UpdateHealth -= UpdateHealth;

			if(HealthOut != null)
				HealthOut();
		}
	}
	// Use this for initialization
	void Start () {
		CharacterHealth.UpdateHealth += UpdateHealth;
		updateScale.x = 1;
		updateScale.y = 1;
		updateScale.z = 1;
		//float _screenTop = Screen.height*0.5F-20;
		//this.transform.localPosition = new Vector3(0, _screenTop, 0 );
	}
}
