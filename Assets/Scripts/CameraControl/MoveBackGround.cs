using UnityEngine;
using System.Collections;

public class MoveBackGround : MonoBehaviour {

	public float maxDistance = 50f;
	public float theMoveDistance = 0.001f;
	public Vector3 newVectors;

	void Move (float _speed)
	{
		StartCoroutine(MoveDistance(_speed));
	}

	IEnumerator MoveDistance (float _speed) {
		if(_speed < 0) {
			while (newVectors.x < +maxDistance) {
				newVectors.x += theMoveDistance;
				print (newVectors.x);
				transform.localPosition = newVectors;
				yield return null;
			}
		}

		if(_speed > 0) {
			print(_speed);
			while (newVectors.x > -maxDistance) {
				newVectors.x -= theMoveDistance;
				print (newVectors.x);
				transform.localPosition = newVectors;
				yield return null;
			}
		}
	}

	void Start () {
		MoveViaKeys.MoveKeyEvt += Move;
		newVectors = transform.localPosition;
	}
}
