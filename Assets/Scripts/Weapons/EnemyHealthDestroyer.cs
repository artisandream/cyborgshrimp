using UnityEngine;
using System.Collections;

public class EnemyHealthDestroyer : MonoBehaviour
{

		public EnemyController Enemy;

		void OnTriggerEnter (Collider _c)
		{
				Enemy.LowerHealth (_c);
		}
}
