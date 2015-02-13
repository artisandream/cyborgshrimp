using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ShowEndGameScreen : MonoBehaviour 
{
	void Start () 
	{
		EndGame.TurnOffGame += TurnOn;
	}

	void OnDestroy () {
		EndGame.TurnOffGame -= TurnOn;
	}

	void TurnOn () 
	{
		this.gameObject.GetComponent<Animator>().SetBool("GameOver", true);
	}
}
