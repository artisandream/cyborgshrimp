using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MenuControl : MonoBehaviour 
{
	private bool isMoving;
	
	private int currentButton;

	[SerializeField]
	private GameObject fadeObj;

	[SerializeField]
	private Vector2[] mapPos;
	//private string[] mapNames;
	//public LevelInfo[] mapLevels;
	
	public LevelInfo[] levels;
	public static WeaponInfo[] weapons;
	public Sprite[] weaponTextures;
	
	public AnimationCurve curve;

	[SerializeField]
	private GameObject map;
	[SerializeField]
	private GameObject mapName;
	[SerializeField]
	private GameObject lockGrp;
	[SerializeField]
	private GameObject requirements;
	[SerializeField]
	private Sprite starActive;
	[SerializeField]
	private Sprite starDeactive;
	[SerializeField]
	private GameObject[] stars;
	[SerializeField]
	private Image[] itemButtons;
	[SerializeField]
	private Text[] itemNames;
	[SerializeField]
	private GameObject inventoryGroup;
	[SerializeField]
	private GameObject character;
	private GameObject[] inventoryItems;
	private RectTransform mapRect;
	private int mapIndex;

	[HideInInspector]
	public static int[] selectedItems;
	
	
	// Use this for initialization
	void Awake () 
	{
		isMoving = false;
		
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
		
		weapons[1].Name = "Bazooka";
		weapons[1].Texture = weaponTextures[1];

		selectedItems = new int[3];
		selectedItems[0] = -1;
		selectedItems[1] = -1;
		selectedItems[2] = -1;
		
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

		int xMulti = Screen.width / 100;
		int yMulti = Screen.height / 100;

		character.transform.localScale = new Vector3(20 * xMulti, 2, 33 * yMulti);
		character.transform.localPosition = new Vector3(0.5f * xMulti, -20 * yMulti, 0);
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
	
	public void SetItemClicked(int _item)
	{
		/*GameObject temp = (GameObject)_object;
		currentButton = temp.transform.GetComponent<Button>();*/

		currentButton = _item;
	}
	
	public void ChangeItemTexture(int _item)
	{
		selectedItems[currentButton] = _item;

		Color color = itemButtons[currentButton].color;
		color.a = 1;
		itemButtons[currentButton].color = color;
		
		itemButtons[currentButton].overrideSprite = weapons[_item].Texture;

		itemNames[currentButton].text = weapons[_item].Name;

	}

	public void AnimationEnded()
	{
		//Debug.Log("End animation");
		isMoving = false;
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

	public void StartFade()
	{
		if(!levels[mapIndex].isLocked)
		{
			Animator anim = GetComponent<Animator>();
		
			anim.Play("FadeBlackIn", 0, 0.0f);
		}
	}
	
	public void LoadTheLevel()
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
