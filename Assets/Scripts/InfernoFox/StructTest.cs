using System;

public delegate void RunMe(int _i);

public struct StructTest {
	public event RunMe RunCall;
	public int myInt;
	public string myString;

	public void CallBack (int _i) {
		if(RunCall != null) 
			RunCall(_i);
	}
}
