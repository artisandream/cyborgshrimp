using System;

public delegate void RunMe(int _i);

public struct StructTest {
	public event RunMe RunCall;
	public int myInt;
	public string myString;
//
//	public StructTest (StructTest _r) {
//		myInt = _r.myInt;
//		myString = _r.myString;
//		//RunCall(_r.myInt);
//	}

	public void CallBack (int _i) {
		if(RunCall != null) 
			RunCall(_i);
	}
}
