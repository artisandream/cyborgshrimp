using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class SunThis : MonoBehaviour {

	// Use this for initialization
	void Start () {
		List<float> numbers = new List<float> { 43.68F, 1.25F, 583.7F, 6.5F };
		
		float sum = numbers.Sum ();
//		double num = double.Parse ("10*2");
		
		Debug.Log(sum);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
