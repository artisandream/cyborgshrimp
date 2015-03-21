using UnityEngine;
using System.Collections;

public class EnemyTargetDirector : MonoBehaviour
{
	public float smoothing = 1.0F;
	public Vector3 startPosition;

	void StartToNextPosition(Transform _playerTarget)
	{
		StartCoroutine(SetNewPosition(_playerTarget));
	}

	void OnDisable()
	{
		EnemyRetargetCall.UpdateEnemyTargetEvent -= StartToNextPosition;
	}

	void OnEnable()
	{
		EnemyRetargetCall.UpdateEnemyTargetEvent += StartToNextPosition;
		transform.localPosition = startPosition;
	}

	IEnumerator SetNewPosition(Transform _playerTarget)
	{
		while (Vector3.Distance(transform.position, _playerTarget.position) > 0.1f) {
			var step = smoothing * Time.deltaTime;
			transform.position = Vector3.Lerp(transform.position, _playerTarget.position, step);
			yield return null;
		}
	}
}
