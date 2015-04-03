using UnityEngine;
using System.Collections;

public class TestCharControl : MonoBehaviour {


	public CharacterController myControl;
	public Vector3 myVect;
	public float jumpVal = 0f;
	float gravity = 50f;

	void Start () {
		myControl = GetComponent<CharacterController>();
	}

	void Update () {
		myVect.y = jumpVal*Time.deltaTime;
		myVect.y -= gravity*Time.deltaTime;
		myControl.Move(myVect*Time.deltaTime);
	}

	IEnumerator EndJump ()
	{
		while (jumpVal > 0 ) {
			jumpVal--;
			yield return null;
		}
		yield return new WaitForSeconds(0);
	}

	void OnMouseDown () {
		jumpVal = 100;
		StartCoroutine(EndJump());
	}
}
