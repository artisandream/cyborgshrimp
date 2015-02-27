using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyRespawnSubscriber : MonoBehaviour {

	public int health = 3;//the enemy health
	public int healthReturn = 3;//the value that the enemy should return to if upon respawning

	public int randomSpawningTime = 10;
	private float activationTime = 0.0F;//test this against the current time to activate a respawn
	public float nextActivate = 1.0F;// the next time an enemy can respawn
	private Vector3 SpawnLocation;//the location that the enemy will appear after respawning
	private bool canRespawn;
	public List<WeaponClass> killerWeaponsList;

//	private int i = 0;
	
	void OnBecameInvisible () {
		this.gameObject.SetActive(false);//turns off the gameObject
	}

	IEnumerator StartLate ()
	{
		yield return new WaitForSeconds (0.1f);
		this.gameObject.SetActive(false);//turns off the gameObject
	}

	void Awake () {
		this.gameObject.SetActive(true);//turns off the gameObject
		StartCoroutine (StartLate ());
	}

	public void AddKillerWeapons (WeaponClass _aS) {//this sets the damage to the enemy from the current weapon in the SwitchWeapon Script
		killerWeaponsList.Add(_aS);
	}

	void Start() {
		killerWeaponsList = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddKillerWeapons;
		healthReturn = health;//sets the return health to the users current health value
	}

	// Use this for initialization
	void OnDisable () {
		EnemySpawnerDelegate.ActivateEnemyEvent += Reactivate;//subscripts the Reactivate function the the EnemySpawnerDelegate event
	}
	
	void OnEnable () {
		EnemySpawnerDelegate.ActivateEnemyEvent -= Reactivate;//unsubscripts the Reactivate function the the EnemySpawnerDelegate event
	}
	
	public void LowerHealth (Collider _c) {
		string _t = _c.gameObject.tag;//_t is tag
		foreach (WeaponClass _aS in killerWeaponsList) {//_aS is a var for AmmoSpawner
			if(_t == _aS.thisWeaponSelection.ToString()) 
				health -= _aS.ammoPower;
		}
		if(health <= 0) {//tests for current health value
			this.gameObject.SetActive(false);//deactivates this gameOjbect
		}
	}

	Vector3 Reactivate (Vector3 _v) {//the delegate passes a value of the location to respawn
		health = healthReturn;//resets the health var
		this.transform.position = new Vector3(_v.x, _v.y, _v.z);// places the enemy in the position that the delegate passes
		if(Time.time > activationTime) {
			this.gameObject.SetActive(true);//actiovates the enemy
			activationTime = Time.time + nextActivate + Random.Range(0, randomSpawningTime);//sets the next time it can be activated
		}
		return _v;//returns a Vector3
	}
}
