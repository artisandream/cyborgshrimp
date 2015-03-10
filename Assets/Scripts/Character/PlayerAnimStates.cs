using UnityEngine;
using System.Collections;

public class PlayerAnimStates : MonoBehaviour
{

	public Animator characterAnim;

	void ChangeToFiringState (WeaponType.weaponSelection _weaponSelection)
	{
		switch (_weaponSelection) {
		case WeaponType.weaponSelection.RAYGUN:
			characterAnim.SetLayerWeight (1, 1);
			break;

		case WeaponType.weaponSelection.ELECTROSPEAR:
			characterAnim.SetLayerWeight (2, 1);
			break;

		}
	}

	IEnumerator ResetFireAnim ()
	{
		yield return new WaitForSeconds (0.001f);
		characterAnim.SetBool ("Fire", false);
	}

	void RunFireAnim ()
	{
		characterAnim.SetBool ("Fire", true);
		StartCoroutine (ResetFireAnim ());
		print("called");
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
		characterAnim.SetLayerWeight (2, 0);

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
