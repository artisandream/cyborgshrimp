using UnityEngine;
using System.Collections;

public class ShieldObstacleScale : MonoBehaviour {

	public Vector3 newV;
	public float scaleValue = 0.1f;
	public float scaleSpeed = 20;

	public float scale = 1f;

	IEnumerator ScaleUp ()
	{
		while (newV.z < scale) {
			newV.x += scaleValue*(Time.deltaTime*scaleSpeed);
			newV.y += scaleValue*(Time.deltaTime*scaleSpeed);
			newV.z += scaleValue*(Time.deltaTime*scaleSpeed);
			transform.localScale = newV;
			yield return null;
		}
	}

	void OnDisable ()
	{
		newV.x = 0;
		newV.y = 0;
		newV.z = 0;
		transform.localScale = newV;
	}

	// Use this for initialization
	void OnEnable () {
		OnDisable ();
		StartCoroutine(ScaleUp());
	}

}
