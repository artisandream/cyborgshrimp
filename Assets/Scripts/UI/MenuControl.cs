using UnityEngine;
using System.Collections;

public class MenuControl : MonoBehaviour 
{
	private bool isMoving;
	// Use this for initialization
	void Awake () 
	{
		isMoving = false;
	}
	
	// Update is called once per frame
	/*void Update () {
	
	}*/

	public void ClickAnimation(Object _object)
	{
		if(isMoving == false)
		{
			Debug.Log("Play click animation");
			GameObject obj = (GameObject)_object;
			Animator anim = obj.GetComponent<Animator>();
			
			anim.Play("ButtonUpdate", 0, 0.0f);

		}
	}

	public void PlayAnimation(string _anim)
	{
		if(isMoving == false)
		{
			Animator anim = GetComponent<Animator>();
			
			anim.Play(_anim, 0, 0.0f);

			isMoving = true;
		}
	}

	public void AnimationEnded()
	{
		Debug.Log("End animation");
		isMoving = false;
	}

	public void ZZZZZZZZZZZZZZZZTestDebug()
	{
		Debug.Log("Test");
	}
}
