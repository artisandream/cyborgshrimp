 // Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class StaticVars : MonoBehaviour 
{
	public static int counter = 0;
	public static int clickTimes = 2;
	public static int highScore;
	public static List<ScoreClass> scoreClassList;
	public static float playerHealth1 = 1;
	public static LevelEnum.LevelChoice currentLevel;

	public enum Direction {
		RIGHT,
		LEFT
	}

	public static Direction currentDirection = Direction.RIGHT;
}
