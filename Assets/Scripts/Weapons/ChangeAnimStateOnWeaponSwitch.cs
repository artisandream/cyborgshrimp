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

		case WeaponType.weaponSelection.ELECTROSPEAR:
			characterAnim.SetLayerWeight(1, 1);
			break;

		}
	}

	IEnumerator ResetFireAnim ()
	{
		yield return new WaitForSeconds (0.001f);
		characterAnim.SetBool ("Fire", false);
	}

	void Fire ()
	{
		characterAnim.SetBool ("Fire", true);
		StartCoroutine (ResetFireAnim ());
	}

	void RunFireAnim (int _i)
	{
		Fire ();
	}

	void RunFireAnim ()
	{
		Fire ();
	}

	// Use this for initialization
	void Start () {
		WeaponList.WeaponType += ChangeAnimState;
		FireThisWeapon.FireCurrentWeapon += RunFireAnim;
		FireWeaponChoice.FireCurrentWeapon += RunFireAnim;
	}
}
