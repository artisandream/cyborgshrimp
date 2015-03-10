using UnityEngine;
using System.Collections;

public class AmmoMelee : MonoBehaviour
{
	public ParticleSystem FX;
	public float waitTime = 0.1f;

	IEnumerator EndFX ()
	{
		yield return new WaitForSeconds(waitTime);
		FX.Stop();
	}

	void OnMeleeFX ()
	{
		FX.Play ();
		StartCoroutine (EndFX ());
	}
}
