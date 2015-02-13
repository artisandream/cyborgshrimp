using SimpleSQL;

public struct Achievements {
	[PrimaryKey, AutoIncrement]
	public int PlayerID { get; set; }
	public int SuperGas { get; set; }
	public int TreesAndRocks { get; set; }
	public int Squirrel { get; set; }
	public int SuperGas2 { get; set; }
	public int GlowWorms { get; set; }
	public int FireBalls { get; set; }
	public int SuperGas3 { get; set; }
	public int LeapFrogs { get; set; }
	public int DeathByMonkeys { get; set; }
	public int ShieldsAtMaximum { get; set; }
	public int GlowWorms2 { get; set; }
	public int ShieldsAtMaximum2 { get; set; }
	public int ShieldsAtMaximum3 { get; set; }
}
