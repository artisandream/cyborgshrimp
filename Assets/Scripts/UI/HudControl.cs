﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class HudControl : MonoBehaviour 
{

	public Sprite[] weaponGfx;

	private int weaponIndex;

	public GameObject weaponIcon;
	private Image weaponImg;

	public GameObject bulletCount;
	private Text bulletText;

	public GameObject moneyCount;
	private Text moneyText;

	public GameObject healthBar;
	private Slider healthSlider;



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
		if(weaponIndex >= weaponGfx.Length - 1)
			weaponIndex = 0;
		else
			weaponIndex++;

		weaponImg.overrideSprite = weaponGfx[weaponIndex];
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
}
