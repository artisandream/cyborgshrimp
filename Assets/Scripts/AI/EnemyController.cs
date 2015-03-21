using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyController : MonoBehaviour
{

	public Animator EnemyAnims;//drop an Animator component here
	public NavMeshAgent navMeshAgent; //accesses the navmesh component of an enemy
	[HideInInspector]
	//hides the public var just below from the Unity Editor
	public GameObject
		myTarget; // the location of the player the enemies case
	private float velocity;//the current velocity of the enemy in x
	public int health = 3;//the enemy health
	public int healthReturn = 3;//the value that the enemy should return to if upon respawning
	public int randomSpawningTime = 10;
	private float activationTime = 0.0F;//test this against the current time to activate a respawn
	public float nextActivate = 1.0F;// the next time an enemy can respawn
	private Vector3 SpawnLocation;//the location that the enemy will appear after respawning
	private bool canRespawn;
	public List<WeaponClass> killerWeaponsList;
	public GameObject art;
	public GameObject explosion;

	public delegate void RunStartOnce();

	public event RunStartOnce RunOnceEvent;

	EnemyController()
	{
		RunOnceEvent += RunOnce;
	}

	void Start()
	{// Update is called once per frame
		navMeshAgent = this.GetComponent<NavMeshAgent>();
		if (RunOnceEvent != null)
			RunOnceEvent();
	}

	void RunOnce()
	{
		killerWeaponsList = new List<WeaponClass>();
		WeaponClass.AddWeaponToList += AddKillerWeapons;
		RunOnceEvent -= RunOnce;
	}
	
	void OnEnable()
	{
		myTarget = navMeshAgent.gameObject;//Sets the target to itself
		healthReturn = health;//sets the return health to the users current health value
		EnemySpawnerDelegate.ActivateEnemyEvent -= Reactivate;//unsubscripts the Reactivate function the the EnemySpawnerDelegate event
	}

	void OnDisable()
	{
		EnemySpawnerDelegate.ActivateEnemyEvent += Reactivate;//subscripts the Reactivate function the the EnemySpawnerDelegate event
	}

	public void StartEnemyMove()
	{
		StartCoroutine(MoveEnemyToTarget());
	}
	
	IEnumerator MoveEnemyToTarget()
	{
		//		print ("GO");
		navMeshAgent.destination = myTarget.transform.position;
		// set the destination of the enemy to follow the player
		velocity = navMeshAgent.velocity.x;
		//gets the velocity of the current agent
		EnemyAnims.SetFloat("Swim", velocity);
		yield return null;
	}
	//sets animation to swim or idle depending on the speed
	
	public void EndSwim()
	{
		EnemyAnims.SetFloat("Swim", 0);
	}
	
	IEnumerator Deactivate()
	{
		yield return new WaitForSeconds(1.5f);
		EnemyAnims.SetBool("Explode", false);
		this.gameObject.SetActive(false);//turns off the gameObject
		EnemyAnims.SetLayerWeight(2, 0f);
	}

	void Awake()
	{
		this.gameObject.SetActive(true);//turns off the gameObject
		StartCoroutine(Deactivate());
	}

	public void AddKillerWeapons(WeaponClass _aS)
	{//this sets the damage to the enemy from the current weapon in the SwitchWeapon Script
		killerWeaponsList.Add(_aS);
	}

	IEnumerator EndDamage()
	{
		yield return new WaitForSeconds(0.2f);
		EnemyAnims.SetLayerWeight(2, 0);
		EnemyAnims.SetBool("Damage", false);
	}

	void PlayDamageAnim()
	{
		var i = Random.Range(0.5f, 1);
		EnemyAnims.SetLayerWeight(2, i);
		EnemyAnims.SetBool("Damage", true);
		StartCoroutine(EndDamage());
	}

	//deactivates this gameOjbect

	public void LowerHealth(Collider _c)
	{
		PlayDamageAnim();

		string _t = _c.gameObject.tag;//_t is tag
		foreach (WeaponClass _aS in killerWeaponsList) {//_aS is a var for AmmoSpawner
			if (_t == _aS.thisWeaponSelection.ToString()) {
				health -= _aS.ammoPower;
			}
		}
		if (health <= 0) {//tests for current health value
			art.SetActive(false);
			explosion.SetActive(true);
			StartCoroutine(Deactivate());
		}
	}

	Vector3 Reactivate(Vector3 _v)
	{//the delegate passes a value of the location to respawn
		EnemyAnims.SetLayerWeight(2, 0);
		health = healthReturn;//resets the health var
		this.transform.position = new Vector3(_v.x, _v.y, _v.z);// places the enemy in the position that the delegate passes
		if (Time.time > activationTime) {
			art.SetActive(true);
			explosion.SetActive(false);
			this.gameObject.SetActive(true);//actiovates the enemy
			activationTime = Time.time + nextActivate + Random.Range(0, randomSpawningTime);//sets the next time it can be activated
		}
		return _v;//returns a Vector3
	}

	void OnTriggerEnter(Collider _c)
	{
		if (_c.gameObject.layer == 14) {
			LowerHealth(_c);
		}
	}
}
