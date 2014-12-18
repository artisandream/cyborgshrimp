using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MenuControl : MonoBehaviour 
{
	private bool isMoving;
	
	private Button currentButton;
	
	public GameObject fadeObj;
	
	public Vector2[] mapPos;
	//private string[] mapNames;
	//public LevelInfo[] mapLevels;
	
	public LevelInfo[] levels;
	public WeaponInfo[] weapons;
	public Sprite[] weaponTextures;
	
	public AnimationCurve curve;
	
	public GameObject map;
	public GameObject mapName;
	public GameObject lockGrp;
	public GameObject requirements;
	public Sprite starActive;
	public Sprite starDeactive;
	public GameObject[] stars;
	public GameObject inventoryGroup;
	private GameObject[] inventoryItems;
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
		
		/*mapNames = new string[3];
		mapNames[0] = "level 1";
		mapNames[1] = "level 2";
		mapNames[2] = "level 3";*/
		
		levels = new LevelInfo[3];
		levels[0].Name = "Level 1";
		levels[0].Position = new Vector2(225, -95);
		levels[0].Difficulty = 1;
		levels[0].isLocked = false;
		levels[0].Requirement = "None";
		levels[0].LevelFileName = "hud testing";
		
		levels[1].Name = "Level 2";
		levels[1].Position = new Vector2(18, 65);
		levels[1].Difficulty = 2;
		levels[1].isLocked = true;
		levels[1].Requirement = "Beat level 1";
		levels[1].LevelFileName = "hud testing";
		
		levels[2].Name = "Level 3";
		levels[2].Position = new Vector2(-210, -145);
		levels[2].Difficulty = 3;
		levels[2].isLocked = true;
		levels[2].Requirement = "Kill 30 enemies";
		levels[2].LevelFileName = "hud testing";
		
		weapons = new WeaponInfo[2];
		weapons[0].Name = "Blaster";
		weapons[0].Texture = weaponTextures[0];
		
		weapons[1].Name = "Blaster";
		weapons[1].Texture = weaponTextures[1];
		
		inventoryItems = new GameObject[inventoryGroup.transform.childCount];
		for(int i = 0; i < inventoryItems.Length; i++)
		{
			inventoryItems[i] = inventoryGroup.transform.GetChild(i).transform.GetChild(0).gameObject;
			
			if(i < weapons.Length)
				inventoryItems[i].GetComponent<Image>().overrideSprite = weapons[i].Texture;
		}
		
		/*inventoryGroup.transform.GetChild(0).transform.GetChild(0).GetComponent<Image>() = weapons[0].Texture;
		inventoryGroup.transform.GetChild(1).transform.GetChild(0).GetComponent<Image>() = weapons[1].Texture;*/
		
		mapIndex = 0;
		
		if(map != null)
		{
			mapRect = map.GetComponent<RectTransform>();
			mapRect.anchoredPosition = mapPos[0];
			mapName.GetComponent<Text>().text = levels[mapIndex].Name;
			SetStarDifficulty();
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
		//Image selectImg = temp.transform.GetChild(0).GetComponent<Image>();
		
		Image itemImage = currentButton.transform.GetChild(0).GetComponent<Image>();
		Color color = itemImage.color;
		color.a = 1;
		itemImage.color = color;
		
		//itemImage.overrideSprite = selectImg.sprite;
		
		for(int i = 0; i < inventoryItems.Length; i++)
		{
			Debug.Log("temp " + temp.name);
			Debug.Log("current obj " + inventoryItems[i].transform.parent.gameObject.name);
			if(temp == inventoryItems[i].transform.parent.gameObject)
				itemImage.overrideSprite = weapons[i].Texture;
		}

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
		Vector2 pos1 = levels[mapIndex].Position;
		//Vector2 pos1 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		if(mapIndex >= levels.Length - 1)
			mapIndex = 0;
		else
			mapIndex++;
			
		Vector2 pos2 = levels[mapIndex].Position;
		//Vector2 pos2 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		StartCoroutine(MoveMap(pos1, pos2));
		
	}
	
	public void PreviousMapLocation()
	{
		Vector2 pos1 = levels[mapIndex].Position;
		//Vector2 pos1 = Camera.main.WorldToScreenPoint(new Vector3(mapPos[mapIndex].x, mapPos[mapIndex].y, this.transform.position.z));
		
		if(mapIndex <= 0)
			mapIndex = levels.Length - 1;
		else
			mapIndex--;
		
		Vector2 pos2 = levels[mapIndex].Position;
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
				mapName.GetComponent<Text>().text = levels[mapIndex].Name;
				requirements.GetComponent<Text>().text = levels[mapIndex].Requirement;
				
				if(levels[mapIndex].isLocked)
					lockGrp.SetActive(true);
				else
					lockGrp.SetActive(false);
						
				SetStarDifficulty();
					
				break;
			}
				
			mapRect.anchoredPosition = Vector2.Lerp(_pos1, _pos2, curve.Evaluate(t));
			
			yield return null;
		}
	}
	
	public void SetStarDifficulty()
	{
		for(int i = 0; i < levels[mapIndex].Difficulty; i++)
			stars[i].GetComponent<Image>().overrideSprite = starActive;
		
		for(int i = levels[mapIndex].Difficulty; i < 10; i++)
			stars[i].GetComponent<Image>().overrideSprite = starDeactive;
	}
	
	public void GoToLevel()
	{
		Application.LoadLevel(levels[mapIndex].LevelFileName);
	}

	public void ZZZZZZZZZZZZZZZZTestDebug()
	{
		Debug.Log("Test");
	}
}

public struct LevelInfo
{
	public string Name{get;set;}
	public string LevelFileName{get;set;}
	public string Requirement{get;set;}
	public int Difficulty{get;set;}
	public Vector2 Position{get;set;}
	public bool isLocked{get;set;}
}

public struct WeaponInfo
{
	public string Name{get;set;}
	public Sprite Texture{get;set;}
}
