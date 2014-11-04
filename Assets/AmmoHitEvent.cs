using UnityEngine;
using System.Collections;

public class AmmoHitEvent : MonoBehaviour {

	//Delete

	public EnemyRespawnSubscriber enemySubscriber;

	// Use this for initialization
	void Start () {
		
	}
	
	void OnTriggerEnter(Collider _c) {
		enemySubscriber.LowerHealth (_c);
		Debug.Log ("HIT");
	}
}
