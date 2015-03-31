using UnityEngine;
using System.Collections;

public class EnemyFiringStateMachine : MonoBehaviour {

	//added to the enemy forward trigger
	public Animator enemyAnim;

	void EndFiring ()
	{
		ChangeState("Armed", false);
		ChangeState("Fire", false);
	}

	void Start() {
		EndGame.TurnOffGame += EndFiring;
	}

	void OnTriggerEnter() {//runs when colliding with a trigger component of a game object
		ChangeState("Armed", true); //Custom function changes the animators state
		ChangeState("Fire", true);
	}

	void OnTriggerExit(Collider _c) {
			EndFiring();
	}
	
	public void ChangeState (string _a, bool _b) {
		enemyAnim.SetBool(_a,_b); //changes the animators state
	}
}
