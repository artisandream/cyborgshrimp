using UnityEngine;
using System.Collections;

public class StructHolder : MonoBehaviour {

	public static StructTest myStruct;

	void Start () {
		myStruct.RunCall += CallThis;
		myStruct.myInt = 4;
		myStruct.CallBack(800);
		myStruct.myString = "Marsh";
		Debug.Log(myStruct.myString);
	}

	void CallThis (int _i) {
		Debug.Log("Called "+_i);
	}
}
