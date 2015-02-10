using UnityEngine;
using System.Collections;
using System;

public class AmmoClass : EnemyWeaponFX {

	public static Action<AmmoClass> AddAmmoToList;

	//public Animator ammoAnim;
	public WeaponType.weaponSelection thisWeaponSelection;
	//public float ammoSpeed = 2; 

	void Start () {
		if(AddAmmoToList != null)
			AddAmmoToList(this);
	}


	public void OnActivateAmmo () {
		this.gameObject.SetActive(true);
	}
	

//	public void OnActivateAmmo (Vector3 _fireLocation, float _rotationAngle, int _ammoSpeed) {
//		ammoAnim.SetBool("Restart", true);//sets the animators restart custom perameter
//		transform.position = _fireLocation;//resets the ammo gameobjects position
//		rigidbody.WakeUp();
//		transform.localEulerAngles = new Vector3(0,_rotationAngle,0);
//		//rigidbody.velocity = Vector3.zero;//stops all motion of a rigid body
//		rigidbody.AddRelativeForce(Vector3.right*_ammoSpeed, ForceMode.Impulse);//adds force to the ammos rigidBody
//	}	

//	void OnTriggerEnter () {
//		StartCoroutine(StopImpact());
//	}

//	void OnTriggerStay () {
//		OnTriggerEnter ();
//	}

//	IEnumerator StopImpact () {
//		ammoAnim.SetBool("Restart", false);//sets the animators restart custom perameter
//		rigidbody.Sleep();
//		ammoAnim.SetBool("Impact", true);
//		yield return new WaitForSeconds(0.1f);
//		ammoAnim.SetBool("Impact", false);
//	}
}
