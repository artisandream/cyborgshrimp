// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SortLayerArray : MonoBehaviour 
{
	public SpriteRenderer[] mySprites;

	public int myDepth = 10;

	void Start () {
		for (int i = 0 ; i < mySprites.Length ; i++) {
			mySprites[i].sortingOrder = i + myDepth;
		}
	}
}
