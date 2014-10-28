using UnityEngine;
using System.Collections;

public class TractorConnection : MonoBehaviour {

	public SpringJoint thisSpringJoint;
	public Rigidbody oldRigidBody;
	public Rigidbody newRigidBody;

	void OnTriggerEnter (Collider _collider) {
		Debug.Log (_collider.rigidbody);
		thisSpringJoint.connectedBody = newRigidBody;
	}

	void OnMouseDown () {
		Debug.Log ("CLICK");
		thisSpringJoint.connectedBody = oldRigidBody;
	}

	void Update () {
		rigidbody.AddForce (0, 0, -10);
	}
}
