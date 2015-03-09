using UnityEngine;
using System.Collections;
using System;

public class FireThisWeapon : MonoBehaviour
{

	public static Action FireCurrentWeapon;

	public void OnMouseUp ()
	{
		if (FireCurrentWeapon != null)
			FireCurrentWeapon ();
	}
}
