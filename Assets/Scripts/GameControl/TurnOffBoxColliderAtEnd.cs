using UnityEngine;
using System.Collections;

public class TurnOffBoxColliderAtEnd : MonoBehaviour {

	void TurnOfComponents ()
	{
		this.GetComponent<BoxCollider>().enabled = false;
	}

	void Start () {
		EndGame.TurnOffGame += TurnOfComponents;
	}
}
