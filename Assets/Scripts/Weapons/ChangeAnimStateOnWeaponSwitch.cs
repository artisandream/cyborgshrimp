using UnityEngine;
using System.Collections;

public class ChangeAnimStateOnWeaponSwitch : MonoBehaviour {

	public Animator characterAnim;

	void ChangeAnimState (WeaponType.weaponSelection _weaponSelection)
	{
		switch (_weaponSelection) {
		case WeaponType.weaponSelection.RAYGUN:
			characterAnim.SetLayerWeight(1, 1);
			break;

		}
	}

	// Use this for initialization
	void Start () {
		WeaponList.WeaponType += ChangeAnimState;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
