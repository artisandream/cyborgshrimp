using UnityEngine;
using System.Collections;

public class EnemyRetargetCall : MonoBehaviour {

	public delegate void UpdateEnemyTarget (Transform _playerTarget);
	public static event UpdateEnemyTarget UpdateEnemyTargetEvent;

	void OnMouseUp () {
		if(UpdateEnemyTargetEvent != null)
			UpdateEnemyTargetEvent(transform);
	}
}
