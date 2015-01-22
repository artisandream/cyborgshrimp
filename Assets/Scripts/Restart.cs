using UnityEngine;
using System.Collections;

public class Restart : MonoBehaviour {

	public string restartLevel;

	void OnClick () {
		Application.LoadLevel(restartLevel);
	}
}
