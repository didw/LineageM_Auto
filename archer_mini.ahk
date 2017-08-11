
SetTitleMatchMode, 2

g_window = 2
WinFocus()
{
    WinActivate, lineageM02
    WinWaitActive, lineageM02
}


StopApp()
{
	if GetKeyState("x")
	{
		ExitApp
	}
}

MClick(x,y)
{
	MouseMove, x, y
	Sleep, 10
	MouseClick, left, x, y
	Sleep, 10
}

back_home = 0
Loop, 10
{
	WinFocus()
	Sleep, 1000
	StopApp()
	MClick(235,275)
	Sleep, 2300
	MClick(295,273)
	Sleep, 1300
	MClick(295,273)
	Sleep, 300
	MClick(380,160)
	Sleep, 500
	MClick(380,288)
	Sleep, 300
	MClick(464,49)
	Sleep, 300
	MClick(377,79)
	Sleep, 500
	MClick(57,71)
	Sleep, 300
	Loop, 30
	{
		StopApp()
		MClick(434,285)
		Sleep, 1000
		MClick(250,133)
		MClick(434,263)
		MClick(278,245)
		StopApp()
	}
	Sleep, 1000
	MClick(464,49)
}