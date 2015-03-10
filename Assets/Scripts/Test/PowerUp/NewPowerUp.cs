using UnityEngine;
using System.Collections;

public class NewPowerUp : MonoBehaviour {

	public PowerUpTypes.PowerUpType thisPowerUpType = PowerUpTypes.PowerUpType.Health;
	public Vector3 randomArea;

	void SpawnThePowerUp (PowerUpTypes.PowerUpType _thisPowerUpType)
	{
		print (_thisPowerUpType);
		if(_thisPowerUpType == thisPowerUpType) {
			randomArea.x = Random.Range(-100, 100);
			randomArea.y = Random.Range(-100, 100);
			randomArea.z = Random.Range(-100, 100);
			Instantiate(this.gameObject, randomArea, Quaternion.identity);
		}
	}

	// Use this for initialization
	void Start () {
		PowerUpGenerator.GenPwerUpEvent += SpawnThePowerUp;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
