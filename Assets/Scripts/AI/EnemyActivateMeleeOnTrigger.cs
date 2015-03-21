using UnityEngine;
using System.Collections;

public class EnemyActivateMeleeOnTrigger : MonoBehaviour {

	//Plays an animation when entering into a player kill trigger

	public Animator eAnim;
	
	void Start () {
		eAnim = this.GetComponent<Animator>();
	}
	
	void OnTriggerEnter (Collider _c) {
		if(_c.tag == "Player") {
			eAnim.SetBool ("Melee", true);
		}
	}

	void OnTriggerExit (Collider _c) {
		if(_c.tag == "Player") {
			eAnim.SetBool ("Melee", false);
		}
	}
}
