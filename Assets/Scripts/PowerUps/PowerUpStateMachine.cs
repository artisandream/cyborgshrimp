using UnityEngine;
using System.Collections;

public class PowerUpStateMachine {

	//State Machine	
	public States myCurrentState = States.IDLE;//State is the enum listed below
	
	//Possible States 
	public enum States {
		IDLE,
		COLLECTING,
		COLLECTED,
		FINISHED
	}

	//Changes animation based on the current state
	public void SwitchState ( GameObject _go) {
		switch (myCurrentState) {
			case States.IDLE:
				IdleState(_go);
				break;
			case States.COLLECTING:
				CollectingState(_go);
				break;
			case States.COLLECTED:
				CollectedState(_go);
				break;
			case States.FINISHED:
				FinishedState(_go);
				break;
		}
	}
	
	void IdleState (GameObject _go) {
		if (!_go.GetComponent<Animation>().isPlaying) {
			_go.GetComponent<Animation>().Play("idle");
		}
	}
	
	void CollectingState (GameObject _go) {
			_go.GetComponent<Animation>().Play("collecting");
			myCurrentState = PowerUpStateMachine.States.COLLECTED;
	}
	
	void CollectedState (GameObject _go) {
		if (!_go.GetComponent<Animation>().isPlaying) {
			_go.GetComponent<Animation>().Play("collected");
			myCurrentState = PowerUpStateMachine.States.FINISHED;
		} 
	}
	
	void FinishedState (GameObject _go) {
		if (!_go.GetComponent<Animation>().isPlaying) {
			foreach (Transform child in _go.transform) {
				child.GetComponent<Renderer>().enabled = false;
			}
		}
	}	
}
