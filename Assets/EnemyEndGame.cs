using UnityEngine;
using System.Collections;

public class EnemyEndGame : MonoBehaviour {

	void EnemyLaugh ()
	{
		this.GetComponent<Animator> ().SetBool ("Laugh", true);
	}

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += EnemyLaugh;
	}

}
