using UnityEngine;
using System.Collections;

public class EnemyTargetDirector : MonoBehaviour
{

		//public Transform startMarker;
		public Transform endMarker;
		public float speed = 1.0F;
		//private float startTime;
		private float journeyLength;

		void SetNewPosition (Transform _playerTarget)
		{
				endMarker = _playerTarget;
		}

		void Start ()
		{
				EnemyRetargetCall.UpdateEnemyTargetEvent += SetNewPosition;
				//	startTime = Time.time;
				//journeyLength = Vector3.Distance(startMarker.position, endMarker.position);
		}

		void Update ()
		{
				//while (this.transform.position != endMarker.position) {
						transform.position = Vector3.Lerp (this.transform.position, endMarker.position, speed * Time.deltaTime);
						print ("moving");
				//}
		}
}
