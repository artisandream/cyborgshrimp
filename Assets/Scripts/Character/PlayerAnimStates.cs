﻿using UnityEngine;
using System.Collections;
using System;

public class PlayerAnimStates : MonoBehaviour
{

	public Animator characterAnim;
	public WeaponType.weaponSelection currentWeaponType;

	public static Action<WeaponType.weaponSelection> ReturnFire;
	public static Action<WeaponType.weaponSelection> EndReturnFire;

	void ChangeToFiringState ()
	{
		characterAnim.SetLayerWeight (1, 1);
	}

	public void CallReturnFire () {
		if(ReturnFire != null) {
			ReturnFire(currentWeaponType);
		}
	}

	public void CallEndReturnFire () {
		if(EndReturnFire != null) {
			EndReturnFire(currentWeaponType);
		}
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

	IEnumerator ResetFireBlank()
	{
		yield return new WaitForSeconds(0.1f);
		characterAnim.SetBool ("Blank", false);
	}

	void RunBlankAnim()
	{
		characterAnim.SetBool ("Blank", true);
		StartCoroutine(ResetFireBlank());
	}

	void ChangeAnimBool (string _animPeram, bool _peramBool)
	{
		characterAnim.SetBool (_animPeram, _peramBool);
	}

	void ChangeAnimFloat (string _animPeram, float _peramFLoat)
	{
		characterAnim.SetFloat (_animPeram, _peramFLoat);
	}


	void OnEnter () {
		ChangeAnimBool("Start", true);

	}

	IEnumerator OnExitWinAndEndGame ()
	{
		yield return new WaitForSeconds(0.01f);
		ChangeAnimBool("Win", false);
	}

	void OnWinGame ()
	{
		ChangeAnimBool("Win", true);
		StartCoroutine(OnExitWinAndEndGame());
	}

	void OnLooseGame ()
	{
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetBool ("Arm", false);
		ChangeAnimFloat ("Walk", 0);
		characterAnim.SetBool ("Arm", false);
		characterAnim.SetLayerWeight (1, 0);
		characterAnim.SetBool ("Die", true);
		EndGame.EndGameBoolHandler -= OnEndGameEvent;
		this.enabled = false;
	}

	bool OnEndGameEvent (bool _b)
	{
		if(_b) {
			OnWinGame ();
		} else {
			OnLooseGame ();
		}
		return _b;
	}

	void Start ()
	{
		EndGame.EndGameBoolHandler += OnEndGameEvent;
		WeaponList.WeaponType += ChangeToFiringState;
		CharacterAdvanced.ChangeAnimBool += ChangeAnimBool;
		CharacterAdvanced.ChangeAnimFloat += ChangeAnimFloat;
		WeaponClass.CallFireAnim += RunFireAnim;
		WeaponClass.CallBlankAnim += RunBlankAnim;
	}
}
