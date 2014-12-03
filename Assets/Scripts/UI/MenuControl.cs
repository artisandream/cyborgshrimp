using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MenuControl : MonoBehaviour 
{
	private bool isMoving;
	
	private Button currentButton;
	
	public GameObject fadeObj;
	
	public Vector2[] mapPos;
	private string[] mapNames;
	
	public AnimationCurve curve;
	
	public GameObject map;
	public GameObject mapName;
	private RectTransform mapRect;
	private int mapIndex;
	
	
	// Use this for initialization
	void Awake () 
	{
		isMoving = false;
		
		/*mapPos = new Vector2[2];
		mapPos[0] = new Vector2(-50, 50);
		mapPos[1] = new Vector2(0, -100);*/
		
		//mapPos = map.GetComponentsInChildren<RectTransform>();
		
		mapNames = new string[3];
		mapNames[0] = "level 1";
		mapNames[1] = "level 2";
		mapNames[2] = "level 3";
		
		mapIndex = 0;
		
		if(map != null)
		{
			mapRect = map.GetComponent<RectTransform>();
			mapRect.anchoredPosition = mapPos[0];
			mapName.GetComponent<Text>().text = mapNames[mapIndex];
		}
		
	}
	
	// Update is called once per frame
	/*void Update () {
	
	}*/

	public void ClickAnimation(Object _object)
	{
		if(isMoving == false)
		{
			//Debug.Log("Play click animation");
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
	
	public void SetItemClicked(Object _object)
	{
		GameObject temp = (GameObject)_object;
		currentButton = temp.transform.GetComponent<Button>();
	}
	
	public void ChangeItemTexture(Object _object)
	{
		GameObject temp = (GameObject)_object;
		Image selectImg = temp.transform.GetChild(0).GetComponent<Image>();
		
		Image itemImage = currentButton.transform.GetChild(0).GetComponent<Image>();
		Color color = itemImage.color;
		color.a = 1;
		itemImage.color = color;
		
		itemImage.overrideSprite = selectImg.sprite;
		Debug.Log(selectImg.name);
		Debug.Log(itemImage.name);
	}

	public void AnimationEnded()
	{
		//Debug.Log("End animation");
		isMoving = false;
	}
	
	public void AtFadeIn()
	{
		
	}
	
	public void NextMapLocation()
	{
		Vector2 pos1 = mapPos[mapIndex];
		//Vector2 pos1 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		if(mapIndex >= mapPos.Length - 1)
			mapIndex = 0;
		else
			mapIndex++;
			
		Vector2 pos2 = mapPos[mapIndex];
		//Vector2 pos2 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		StartCoroutine(MoveMap(pos1, pos2));
		
	}
	
	public void PreviousMapLocation()
	{
		Vector2 pos1 = mapPos[mapIndex];
		//Vector2 pos1 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		if(mapIndex <= 0)
			mapIndex = mapPos.Length - 1;
		else
			mapIndex--;
		
		Vector2 pos2 = mapPos[mapIndex];
		//Vector2 pos2 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		StartCoroutine(MoveMap(pos1, pos2));
		
	}
	
	private IEnumerator MoveMap(Vector2 _pos1, Vector2 _pos2)
	{
		float t = 0;
		
		while(true)
		{
			t += 3f * Time.deltaTime;
			
			if(t >= 1)
			{
				mapName.GetComponent<Text>().text = mapNames[mapIndex];
				break;
			}
				
			mapRect.anchoredPosition = Vector2.Lerp(_pos1, _pos2, curve.Evaluate(t));
			
			yield return null;
		}
	}

	public void ZZZZZZZZZZZZZZZZTestDebug()
	{
		Debug.Log("Test");
	}
}
