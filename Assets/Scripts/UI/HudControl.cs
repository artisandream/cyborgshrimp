using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class HudControl : MonoBehaviour 
{

	//public Sprite[] weaponGfx;

	private int weaponIndex;

	public GameObject weaponIcon;
	private Image weaponImg;

	public GameObject bulletCount;
	private Text bulletText;

	public GameObject moneyCount;
	private Text moneyText;

	public GameObject healthBar;
	private Slider healthSlider;
	
	public delegate void Hold();
	public Hold onLeftHold;
	public Hold onRightHold;
	
	public float holdRateInSeconds;

	//private bool isHolding;

	/*public int count;
	public int maxCount;
	public int mCount;
	public float health;
	public float maxHealth;*/

	// Use this for initialization
	void Awake () 
	{
		if(weaponIcon != null)
			weaponImg = weaponIcon.GetComponent<Image>();

		if(bulletCount != null)
			bulletText = bulletCount.GetComponent<Text>();

		if(moneyCount != null)
			moneyText = moneyCount.GetComponent<Text>();

		if(healthBar != null)
			healthSlider = healthBar.GetComponent<Slider>();

		/*Debug.Log("weapon index 1 " + MenuControl.selectedItems[0]);
		Debug.Log("weapon index 2 " + MenuControl.selectedItems[1]);
		Debug.Log("weapon index 3 " + MenuControl.selectedItems[2]);*/

		weaponIndex = -1;
		weaponImg.gameObject.SetActive(true);
		SwitchWeapons();
	}
	
	// Update is called once per frame
	/*void Update () 
	{
		SetBulletCount(count, maxCount);

		SetMoneyCount(mCount);

		SetHealthBar(health, maxHealth);
	}*/

	public void SwitchWeapons()
	{
		/*if(weaponIndex >= weaponGfx.Length - 1)
			weaponIndex = 0;
		else
			weaponIndex++;

		weaponImg.overrideSprite = weaponGfx[weaponIndex];*/
		

		if(weaponIndex >= MenuControl.selectedItems.Length - 1)
			weaponIndex = 0;
		else
			weaponIndex++;

		/*Debug.Log("weaponIndex " + weaponIndex);
		Debug.Log("MenuControl.selectedItems[weaponIndex] " + MenuControl.selectedItems[weaponIndex]);
		Debug.Log("Texture " + MenuControl.weapons[MenuControl.selectedItems[weaponIndex]].Texture);*/

		if(MenuControl.selectedItems[weaponIndex] >= 0)
			weaponImg.overrideSprite = MenuControl.weapons[MenuControl.selectedItems[weaponIndex]].Texture;
		else
			SwitchWeapons();
	}

	public void SetBulletCount(int _count, int _maxCount)
	{
		if(_count >= 0 && _maxCount >= 0)
		{
			bulletText.text = _count.ToString() + " / " + _maxCount.ToString();
			UpdateAnimation((Object)bulletCount);
		}
	}

	public void SetMoneyCount(int _count)
	{
		if(_count >= 0)
		{
			moneyText.text = _count.ToString();
			UpdateAnimation((Object)moneyCount);
		}
	}

	public void SetHealthBar(float _health, float _maxHealth)
	{
		if(_health >= 0 && _maxHealth >= 0)
		{
			float normalized = _health / _maxHealth;
			healthSlider.value = normalized;
		}

	}

	public void UpdateAnimation(Object _object)
	{
		GameObject obj = (GameObject)_object;
		Animator anim = obj.GetComponent<Animator>();

		anim.Play("ButtonUpdate", 0, 0.0f);
	}
	
	public void TurnOnLeftHold()
	{
		StartCoroutine("ActivateHold", onLeftHold);
	}
	
	public void TurnOffLeftHold()
	{
		StopCoroutine("ActivateHold");
	}
	
	public void TurnOnRightHold()
	{
		StartCoroutine("ActivateHold", onRightHold);
	}
	
	public void TurnOffRightHold()
	{
		StopCoroutine("ActivateHold");
	}
	
	private IEnumerator ActivateHold(Hold _holdDir)
	{
		while(true)
		{
			if(_holdDir != null)
				_holdDir();
			
			yield return new WaitForSeconds(holdRateInSeconds);
		}
	}
}
