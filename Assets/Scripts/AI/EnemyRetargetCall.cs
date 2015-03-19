using UnityEngine;
using System.Collections;

public class EnemyRetargetCall : MonoBehaviour {

	public delegate void UpdateEnemyTarget (Transform _playerTarget);
	public static event UpdateEnemyTarget UpdateEnemyTargetEvent;

	void StartTarget (float _speed)
	{
		ChangeTarget ();
	}

	IEnumerator IntTarget()
	{
		yield return new WaitForSeconds(0.1f);
		ChangeTarget();
	}

	void Start () {
		MoveViaKeys.MoveKeyEvt += StartTarget;
		MoveViaKeys.JumpKeyEvt += StartTarget;
		//StartCoroutine(IntTarget());
	}
	
	void ChangeTarget () {
		if(UpdateEnemyTargetEvent != null)
			UpdateEnemyTargetEvent(transform);
	}
}
