using UnityEngine;
using System.Collections;
using System;

public class FireWeaponChoice : MonoBehaviour
{

	public static Action<int> FireCurrentWeapon;
	public static Action<FireWeaponChoice> AddFire;
	public int choiceNum;

	public void Start ()
	{
		if (AddFire != null)
			AddFire (this);
	}

	public void OnMouseUp ()
	{
		if (FireCurrentWeapon != null)
			FireCurrentWeapon (choiceNum);
	}

}
