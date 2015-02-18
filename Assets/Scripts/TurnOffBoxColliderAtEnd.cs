using UnityEngine;
using System.Collections;

public class TurnOffBoxColliderAtEnd : MonoBehaviour {

	void TurnOfComponents ()
	{
		this.GetComponent<BoxCollider>().enabled = false;
	}

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += TurnOfComponents;
	}
	
	void Update () {
	
	}
}
