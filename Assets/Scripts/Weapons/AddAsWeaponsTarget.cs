using UnityEngine;
using System.Collections;
using System;

public class AddAsWeaponsTarget : MonoBehaviour {

	public static Action<GameObject> AddToTargetList;

	void Start () {
		if (AddToTargetList != null) 
			AddToTargetList (this.gameObject);
	}
}
