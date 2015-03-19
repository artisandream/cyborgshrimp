using UnityEngine;
using System.Collections;

public class EnemyAnimStates : MonoBehaviour {

	public Animator thisAnimator;

	void EnemyLaugh ()
	{
		ChangeBoolPerameter("Laugh", true);
	}

	//use this for die, laugh, fire, melee
	void ChangeBoolPerameter (string _animationName,bool _b) {
		thisAnimator.SetBool (_animationName, _b);
	}

	void Move (float velocity) {
		thisAnimator.SetFloat ("Swim", velocity);
	}

	IEnumerator ChangeThisLayer ()
	{
		yield return new WaitForSeconds(0.01f);
		this.GetComponent<BoxCollider>().enabled = false;
		//this.gameObject.layer = 0;
	}

	void OnTriggerEnter (Collider _c) {
		print (_c.gameObject);
		StartCoroutine(ChangeThisLayer ());
	}

	void Start () {
		thisAnimator = this.GetComponent<Animator>();
		EndGame.TurnOffGame += EnemyLaugh;
	}
}
