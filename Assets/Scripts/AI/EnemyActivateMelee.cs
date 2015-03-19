using UnityEngine;
using System.Collections;

public class EnemyActivateMelee : MonoBehaviour {

	public Animator eAnim;

	// Use this for initialization
	void Start () {
	
	}
	
	void OnTriggerEnter () {
		eAnim.SetBool ("Melee", true);
	}

	void OnTriggerExit () {
		eAnim.SetBool ("Melee", false);
	}
}
