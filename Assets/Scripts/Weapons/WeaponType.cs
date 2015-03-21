using UnityEngine;
using System.Collections;

public class WeaponType : MonoBehaviour {

	public enum weaponSelection {
		RAYGUN,
		MISSILE,
		PLASMA,
		SONICBAT,
		ELECTROSPEAR
	}

	public static float raygunPower = 1;
	public static float missilePower = 1;
	public static float plamsaPower = 1;
	public static float sonicBatPower = 1;
	public static float electroSpearPower = 1;
}
