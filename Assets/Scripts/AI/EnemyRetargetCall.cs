using UnityEngine;
using System.Collections;

public class EnemyRetargetCall : MonoBehaviour {

	public delegate void UpdateEnemyTarget (Transform _playerTarget);
	public static event UpdateEnemyTarget UpdateEnemyTargetEvent;

	void StartTarget (float _speed)
	{
		ChangeTarget ();
	}

	void Start () {
		MoveViaKeys.MoveKeyEvt += StartTarget;
		MoveViaKeys.JumpKeyEvt += StartTarget;
	}
	
	void ChangeTarget () {
		if(UpdateEnemyTargetEvent != null)
			UpdateEnemyTargetEvent(transform);
	}
}
