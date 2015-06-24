using SimpleSQL;

public class ScoreClass
{
	[PrimaryKey, AutoIncrement]
	public int PlayerID { get; set; }
	public int Points { get; set; } 
}
