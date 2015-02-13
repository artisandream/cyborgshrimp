using UnityEngine;
using System.Collections;

public class GetAndSet : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Foo = "Apple";
		Foo = "Man";
		Debug.Log(Foo);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	private string foo;
	public string Foo
	{
		get { return foo+" Hat"; }
		private set { foo = value; }
	}

}
