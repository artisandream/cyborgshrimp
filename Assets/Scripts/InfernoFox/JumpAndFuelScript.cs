using UnityEngine;
using System.Collections;
using System;

public class JumpAndFuelScript : MonoBehaviour
{
	public static Action JumpPlayer;
	public static Action TurnOffPlayerArt;

	//public UISlider gameSlider;
	
	private Vector2 v2;
	public float fuelUsage = .03f;
	public float fuelLevel = 1;
	public float fuelLevelReverse = 0;
	public float maxFuelLevel = 1;
	public float reFuelAmmount = 0.33f;
	public float reFuelAmountMin = 0.1f;
	public float decreaseReFuel = 0.00001f;
	public ParticleSystem rocketFire;
	public ParticleSystem rocketSmoke;
	public float fireEmitionRate = 200;
	public float[] fuelLevels;
	public float SmokeEmitionRate = 10;
	private bool canJump = true;

	void Start () {
		v2.y = 1;
		EndGame.TurnOffGame += EndThisGame;
		AddMoreFuel.AddMoreFuelAction += Refuel;
	}
	
	void OnDestroy () {
		EndGame.TurnOffGame -= EndThisGame;
		AddMoreFuel.AddMoreFuelAction -= Refuel;
	}
	
	void EndThisGame () {
		rocketFire.Stop();
		rocketSmoke.Stop();
		if(TurnOffPlayerArt != null) 
			TurnOffPlayerArt();
		//this.gameObject.GetComponent<BoxCollider>().enabled = false;
		canJump = false;
		StartCoroutine(TurnOffRocket());
	}
	
	void Refuel () {
		if(fuelLevel >= 0) {
			fuelLevel += reFuelAmmount;
		}
		if(fuelLevel >= maxFuelLevel) {
			fuelLevel = maxFuelLevel;
		}
	}

	void Update() {
		if(Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began) {
			JumpCharacter();
		}
	}

	void JumpCharacter ()
	{
		if(canJump) {
			if(JumpPlayer != null)
				JumpPlayer();

			if (fuelLevel > 0) {
				fuelLevel -= fuelUsage;
			}

			RocketFlames();
			//gameSlider.value = fuelLevel;

			if(reFuelAmmount >= reFuelAmountMin) {
				reFuelAmmount -= decreaseReFuel;
			}
			if(fuelLevel <= 0)
				canJump = false;
		}
	}

	void OnMouseDown () {
		JumpCharacter ();
	}
	
	void RocketFlames (){
		if (fuelLevel > fuelLevels[0]){
			//gameSlider.foregroundWidget.color = Color.green;
			rocketSmoke.emissionRate = 0;
			rocketFire.emissionRate = (fuelLevel)*fireEmitionRate;
		}
		if (fuelLevel > fuelLevels[2] && fuelLevel <= fuelLevels[1]){
			//gameSlider.foregroundWidget.color = Color.yellow;
			rocketFire.emissionRate = (fuelLevel*0.25f)*fireEmitionRate;
		}
		if (fuelLevel < fuelLevels[2]){
			rocketSmoke.emissionRate = SmokeEmitionRate;
			//gameSlider.foregroundWidget.color = Color.red;
			rocketFire.emissionRate = 0;
		}	
	}
	
	IEnumerator TurnOffRocket () {
		yield return new WaitForSeconds(1);
		rocketFire.Stop();
		rocketSmoke.Stop();
	}
}

