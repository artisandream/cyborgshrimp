using UnityEngine;
using System.Collections;

public class HudTesting : MonoBehaviour 
{
	HudControl cont;

	public int count;
	public int maxCount;
	public int mCount;
	public float health;
	public float maxHealth;

	// Use this for initialization
	void Awake () 
	{
		cont = GetComponent<HudControl>();
		
		cont.onLeftHold = DebugDelegate;
		cont.onRightHold = DebugDelegate;
	}
	
	public void UpdateHud()
	{
		cont.SetBulletCount(count, maxCount);
		cont.SetHealthBar(health, maxHealth);
		cont.SetMoneyCount(mCount);
	}
	
	public void DebugMessage(string _object)
	{
		Debug.Log(_object + " is working");
	}
	
	public void DebugDelegate()
	{
		Debug.Log("Delegate is working");
	}
}
