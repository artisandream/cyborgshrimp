using UnityEngine;
using System.Collections;

public class ButtonTrans : MonoBehaviour {
	
	public bool activeButton = false;
	public float duration = 1.0F;
	public int activateNum = 0;

	public enum ButtonStates {
		START,
		OVER,
		EXIT,
		DOWN
	}
	
	public ButtonStates buttonState = ButtonStates.START;

	public Color fullColor;
	public Color fadedColor;
	private Color currentColor;

	public BoxCollider2D boxCollider;
	public SpriteRenderer ButtonSprite;

	void SetButtonStartState ()
	{
		if (activeButton) {
			currentColor = fullColor;
			boxCollider.enabled = true;
		}
		else {
			currentColor = fadedColor;
			boxCollider.enabled = false;
		}
	}

	void SetSwitchButton (int _a) {
		if(_a == activateNum){
				activeButton = true;
				SetButtonStartState ();
		}
	}

	void Start () {
		WeaponList.ActivateWeaponSwitch += SetSwitchButton;
		SetButtonStartState ();
	}

	// Use this for initialization
	void OnMouseOver ( ) {
		buttonState = ButtonStates.OVER;
	}

	void OnMouseExit () {
		buttonState = ButtonStates.EXIT;
	}

	void OnMouseDown () {
		buttonState = ButtonStates.DOWN;
	}
	
	// Update is called once per frame
	void Update () {
		switch (buttonState) {
		case ButtonStates.START:
			ChangeButtonColor(currentColor);
			break;

		case ButtonStates.OVER:
			ChangeButtonColor(Color.red);
			break;

		case ButtonStates.EXIT:
			ChangeButtonColor(currentColor);
			break;

		case ButtonStates.DOWN:
			ChangeButtonColor(Color.yellow);
			break;
		}
		SetButtonStartState ();
	}

	void ChangeButtonColor (Color _c) {
		ButtonSprite.color = Color.Lerp(ButtonSprite.color, _c, Time.deltaTime*duration);
	}
}










