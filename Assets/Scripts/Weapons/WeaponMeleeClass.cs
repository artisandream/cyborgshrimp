using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class WeaponMeleeClass : WeaponClass
{

		public BoxCollider thisCollider;
		public bool canMelee = false;

		public override void Start ()
		{
				base.Start ();
				thisCollider = this.GetComponent<BoxCollider> ();


				if (ifAvaliable) {
						thisCollider.enabled = false;
						SetLayerPrepForMelee ();
				}
		}

		void SetLayerPrepForMelee ()
		{
				canMelee = true;
				this.gameObject.layer = 14;
				thisCollider.enabled = false;
		}

		public override void OnTriggerEnter ()
		{
				if (!canMelee) {
						base.OnTriggerEnter ();
				}
				SetLayerPrepForMelee ();
		}

		IEnumerator DisableCollider ()
		{
				yield return new WaitForSeconds (1f);
				thisCollider.enabled = false;
		}

		public override void FireAmmo (Vector3 _firingDirection)
		{
				if (Time.time > activationTime) {//checks if time is greater than the activation time var
						activationTime = Time.time + nextActivate;//adds the nextActive var to time
						thisCollider.enabled = true;

						StartCoroutine (DisableCollider ());
				}
		}
}
