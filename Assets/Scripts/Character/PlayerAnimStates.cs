using UnityEngine;
using System.Collections;
using System;

public class PlayerAnimStates : MonoBehaviour
{

	public Animator characterAnim;
	public static Action<WeaponType.weaponSelection> ReturnFire;
	public WeaponType.weaponSelection currentWeaponType;

	void ChangeToFiringState ()
	{
		characterAnim.SetLayerWeight (1, 1);
	}

	public void CallReturnFire () {
		if(ReturnFire != null)
			ReturnFire(currentWeaponType);
	}

	IEnumerator ResetFireAnim (WeaponType.weaponSelection _ws)
	{
		yield return new WaitForSeconds (0.001f);
		characterAnim.SetBool (_ws.ToString(), false);
	}

	void RunFireAnim (WeaponType.weaponSelection _ws)
	{
		characterAnim.SetBool (_ws.ToString(), true);
		currentWeaponType = _ws;
		StartCoroutine (ResetFireAnim (_ws));
	}

	void ChangeAnimBool (string _animPeram, bool _peramBool)
	{
		characterAnim.SetBool (_animPeram, _peramBool);
	}

	void ChangeAnimFloat (string _animPeram, float _peramFLoat)
	{
		characterAnim.SetFloat (_animPeram, _peramFLoat);
	}

	void KillPlayer ()
	{
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetBool ("Arm", false);
		ChangeAnimFloat ("Walk", 0);
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetLayerWeight (1, 0);
		characterAnim.SetBool ("Die", true);
		EndGame.TurnOffGame -= KillPlayer;
		this.enabled = false;
	}

	void Start ()
	{
		EndGame.TurnOffGame += KillPlayer;
		WeaponList.WeaponType += ChangeToFiringState;
		CharacterAdvanced.ChangeAnimBool += ChangeAnimBool;
		CharacterAdvanced.ChangeAnimFloat += ChangeAnimFloat;
		WeaponClass.CallFireAnim += RunFireAnim;
		WeaponMeleeClass.CallFireAnim += RunFireAnim;
	}
}
