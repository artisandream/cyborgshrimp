using UnityEngine;
using System.Collections;

public class PowerUpGenerator : MonoBehaviour
{

		public float timeToNextPowerUPGeneration = 1;
		public delegate void GenPowerUp (PowerUpTypes.PowerUpType thisPowerUpType);

		public PowerUpTypes.PowerUpType powerUpSelection = PowerUpTypes.PowerUpType.Health;
		public int randomInt;

		public static event GenPowerUp GenPwerUpEvent;

		IEnumerator GenerationNewPowerUP ()
		{
				randomInt = Random.Range (0, 10);
				yield return new WaitForSeconds (timeToNextPowerUPGeneration);
			
				switch (randomInt) {
				case 0:
						print ("Health");
						powerUpSelection = PowerUpTypes.PowerUpType.Health;
						break;
			
				case 1:
						print ("Poison");
						powerUpSelection = PowerUpTypes.PowerUpType.Poison;
						break;
			
				case 2:
						print ("Sheild");
						powerUpSelection = PowerUpTypes.PowerUpType.Sheild;
						break;
			
				case 3:
						print ("Speed");
						powerUpSelection = PowerUpTypes.PowerUpType.Speed;
						break;
			
				default:
						print ("Null");
						powerUpSelection = PowerUpTypes.PowerUpType.none;
						break;
				}
				
				if (GenPwerUpEvent != null)
						GenPwerUpEvent (powerUpSelection);
				
				StartCoroutine (GenerationNewPowerUP ());
		}

		void Start ()
		{
				
				StartCoroutine (GenerationNewPowerUP ());
		}

}
