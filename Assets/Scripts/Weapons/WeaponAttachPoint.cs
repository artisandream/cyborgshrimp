using UnityEngine;
using System.Collections;
using System;

public class WeaponAttachPoint : MonoBehaviour {
	
	public enum AttachType {
		Melee,
		Range
	}

	public AttachType thisAttachType = AttachType.Melee;

	public static Action<WeaponAttachPoint> AttachAction;

	void Start () {
		if (AttachAction != null)
			AttachAction (this);
	}
}
