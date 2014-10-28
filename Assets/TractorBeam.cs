using UnityEngine;
using System.Collections;

public class TractorBeam : MonoBehaviour {

	public Transform Attractor;
	public BoxCollider myCollider;
	
	// Update is called once per frame
	void Update () {
		transform.LookAt (Attractor.position);	
	}

	void OnTriggerEnter () {
		Debug.Log ("Collection");
		myCollider.enabled = false;
	}
	
}
