using UnityEngine;
using System.Collections;

public class EnemyMelee : MonoBehaviour {

	public delegate void MeleeDel (float _f);
	public static MeleeDel MeleeEvent;
	public float killPower = 0.1f;

	void OnMelee () {
		print ("melee");
		if (MeleeEvent != null) {
			MeleeEvent(killPower);
		}
	}
}
