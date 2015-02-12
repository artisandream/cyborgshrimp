using UnityEngine;
using System.Collections;

public class EnemyHealthDestroyer : MonoBehaviour {

	public EnemyRespawnSubscriber Enemy;

	void OnTriggerEnter (Collider _c) {
		Enemy.LowerHealth (_c);
		Debug.Log (Enemy.health);
	}

}
