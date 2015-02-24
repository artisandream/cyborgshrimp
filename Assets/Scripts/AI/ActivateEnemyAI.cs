﻿using UnityEngine;
using System.Collections;

public class ActivateEnemyAI : MonoBehaviour {
	
	public EnemyNav thisNMA;//instance of EnemyNav script on another game Object

	void OnTriggerStay (Collider _c) {
		//if(_c.tag == "Player") {
		thisNMA.myTarget = _c.gameObject;//changes the navMeshAgent target to the player
		thisNMA.StartEnemyMove ();
		//}
	}

	void OnTriggerExit ( ) {
		thisNMA.myTarget = this.gameObject;//changes the navMeshAgent target to itself
		thisNMA.EndSwim ();
	}
}
