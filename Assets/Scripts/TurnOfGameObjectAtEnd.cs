using UnityEngine;
using System.Collections;

public class TurnOfGameObjectAtEnd : MonoBehaviour {

	void DisableGameObject ()
	{
		this.gameObject.SetActive (false);
	}

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += DisableGameObject;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
