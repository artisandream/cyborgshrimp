using UnityEngine;
using System.Collections;

public class CallStructEvent : MonoBehaviour {

	// Use this for initialization
	void Start () {
		StructHolder.myStruct.RunCall += NeRun;
	}
	
	// Update is called once per frame
	void NeRun (int _i) {
		Debug.Log("Fine "+_i);
	}
}
