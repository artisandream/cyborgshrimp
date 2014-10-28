using UnityEngine;
using System.Collections;

public class AmmoArtControl : MonoBehaviour {

	public GameObject ammoControl;
	public Animator ammoAnim;
	public SpriteRenderer ammoSprite;
	public Rigidbody ammoRigid;//Component Type

	void OnCollisionEnter () {//When contacts with another object with a collider component
		ammoAnim.SetBool("Impact", true);//Sets a boolean parameter in the Animator component
		ammoRigid.velocity = Vector3.zero;//stops the rigidbody component from moving
	}

//	public void StopImpact() {//Called from an animation event
//		ammoAnim.SetBool("Impact", false);//stops the explosion animation from playing
//	}

	void DisableSprite () {//runs at the beginning of the first frame
		StartCoroutine(WaitDisable());//runs a function that will hold until the end of the first frame
	}
	
	private IEnumerator WaitDisable() {//allows holds
		yield return new WaitForEndOfFrame();//holds this function until the last of the frame called
		ammoControl.SetActive(false);
	}
	
	public void Restart () {//Called from and animation event
		ammoAnim.SetBool("Restart", false);//allows the start animation to play
	}
}
