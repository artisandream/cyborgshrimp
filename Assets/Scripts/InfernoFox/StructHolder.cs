using UnityEngine;
using System.Collections;

public class StructHolder : MonoBehaviour {

	public static StructTest myStruct;

	// Use this for initialization
	void Start () {
		myStruct.RunCall += CallThis;
		myStruct.myInt = 4;
		//myStruct = new StructTest(3, "Hat");
		myStruct.CallBack(800);
		myStruct.myString = "Marsh";
		Debug.Log(myStruct.myString);
	}
	
	// Update is called once per frame
	void CallThis (int _i) {
		Debug.Log("Called "+_i);
	}
}
