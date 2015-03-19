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

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += EnemyLaugh;
	}
}
