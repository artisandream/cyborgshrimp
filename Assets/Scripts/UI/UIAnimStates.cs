using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIAnimStates : MonoBehaviour {

	public Text startText;
	public Animator guiAnim;

	public void OnTwo () {
		startText.text = "2";
	}

	public void OnOne () {
		startText.text = "1";
	}

	public void OnEnd () {
		startText.text = "Game Over";
		startText.fontSize = 150;
	}

	IEnumerator EndGUI ()
	{
		yield return new WaitForSeconds(1f);
		guiAnim.SetBool("EndGUI", true);
	}

	void EndThisGUI ()
	{
		StartCoroutine(EndGUI());
	}

	void Start () {
		EndGame.TurnOffGame += EndThisGUI;
	}

}
