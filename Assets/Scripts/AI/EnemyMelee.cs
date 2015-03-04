using UnityEngine;
using System.Collections;

public class EnemyMelee : MonoBehaviour {

	public delegate void MeleeDel ();
	public static MeleeDel MeleeEvent;

	void OnMelee () {
		if (MeleeEvent != null) {
			MeleeEvent();
		}
	}
}
