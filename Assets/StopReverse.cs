using UnityEngine;
using System.Collections;

public class StopReverse : MonoBehaviour {

	void OnTriggerExit () 
	{
		this.GetComponent<BoxCollider> ().isTrigger = false;
		Debug.Log ("Exit");
	}

}
