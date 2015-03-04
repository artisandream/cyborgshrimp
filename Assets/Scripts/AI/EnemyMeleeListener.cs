using UnityEngine;
using System.Collections;

public class EnemyMeleeListener : MonoBehaviour {
	
	public ParticleSystem thisParticles;
	public Vector3 randomPos;
	public float randomDistance = 4;
	public float heightOffset = 6;

	IEnumerator EndParticalPlay ()
	{
		yield return new WaitForSeconds (0.01f);
		thisParticles.Stop();
	}

	void AddDamage (float _f)
	{
		randomPos.x = Random.Range (randomDistance * -1, randomDistance);
		randomPos.y = Random.Range (0, randomDistance) + heightOffset;  
		this.transform.localPosition = randomPos;
		thisParticles.Play();
		StartCoroutine (EndParticalPlay ());
		print ("Hit");
	}


	void Start () {
		print("STart");
		EnemyMelee.MeleeEvent += AddDamage;
	}
}
