using UnityEngine;
using System.Collections;

public class WeaponConfig : MonoBehaviour {

	
	public WeaponObject[] playerWeapons;

	public float raygunPower;
	public float misslePower;
	public float plasmaPower;
	public float sonicbatPower;
	public float electroSpearPower;
	
	
	public delegate void PowerToSend(float _power);
	public event PowerToSend SendPower;
	
	IEnumerator SendToPLayerAmmo ()
	{
		yield return new WaitForSeconds(0.1f);
		float powerLevel = 0 ;

		if(SendPower != null) {
			SendPower (powerLevel);
		}
	}
	
	void Start() {
		StartCoroutine(SendToPLayerAmmo());
	}


}
