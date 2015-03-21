using UnityEngine;
using System.Collections;

public class EnemyMeleeOnAnimator : MonoBehaviour {

	public delegate void MeleeDel (float _f);
	public static MeleeDel MeleeEvent;
	public float killPower = 0.1f;


	//This runs on a enemy melee animation
	void OnMelee () {
		if (MeleeEvent != null) {
			MeleeEvent(killPower);
		}
	}
}
