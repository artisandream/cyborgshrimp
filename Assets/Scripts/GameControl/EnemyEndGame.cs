using UnityEngine;
using System.Collections;

public class EnemyEndGame : MonoBehaviour {

	IEnumerator PlayLaughAnim ()
	{
		float RandomNum = Random.Range(0, 0.5f);
		yield return new WaitForSeconds(RandomNum);
		this.GetComponent<Animator> ().SetBool ("Laugh", true);
	}

	void EnemyLaugh ()
	{
		StartCoroutine(PlayLaughAnim ());
	}

	void EnemyDie () {
		print ("All Die");
	}

	bool EnemyEndState (bool arg)
	{
		if(arg){
			EnemyDie ();
		} else {
			EnemyLaugh();
		};
		return arg;
	}

	// Use this for initialization
	void OnEnable () {
		print ("off");
		EndGame.EndGameBoolHandler += EnemyEndState;
	}

	void OnDisable () {
		print ("On");
		EndGame.EndGameBoolHandler -= EnemyEndState;
	}
}
