using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemySpawnerDelegate : MonoBehaviour {
	
	private float activationTime = 0.0F; //this will be added and compared to time.time
	public float nextActivate = 2.0F; // how long it takes for the next activation time

	public int randomSpawningTime = 10;//variation on respawn time

	public Animator spawnAnim;//requires an animator component for the spawner 
	public delegate void ActivateEnemyHandler (Vector3 _v); //sends this location to enemies
	public static ActivateEnemyHandler ActivateEnemyEvent; //invokes the delegate

	
	void Start() {
		spawnAnim = this.GetComponent<Animator>();//references the animator component
		OnActivateEnemy(); //runs the enemy activation event
	}

	void OnTriggerStay() {
		OnActivateEnemy(); //runs the enemy activation event
	}

	void TurnOffSpawn () {
		spawnAnim.SetBool("Spawn", false);
	}

	public void OnActivateEnemy () {
		if(Time.time > activationTime) {
			if( ActivateEnemyEvent != null ) { //invokes the event
				ActivateEnemyEvent(this.transform.position);//passes this postion to any 
			}
			spawnAnim.SetBool("Spawn", true);
			activationTime = Time.time + nextActivate+(Random.Range(0,randomSpawningTime));//randomises the next activation time
		}
	}	
}
