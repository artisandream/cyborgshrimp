using UnityEngine;
using System.Collections;

public class TurnOffBoxColliderAtEnd : MonoBehaviour {

	void TurnOfComponents ()
	{
		this.GetComponent<BoxCollider>().enabled = false;
		print ("OFF");
	}

	// Use this for initialization
	void Start () {
		EndGame.TurnOffGame += TurnOfComponents;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
