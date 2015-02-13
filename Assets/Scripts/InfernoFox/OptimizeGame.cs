using UnityEngine;
using System.Collections;

public class OptimizeGame : MonoBehaviour {
 
	void Awake () {
		Application.targetFrameRate = 15;
		useGUILayout = false;
	}
}
