
SetTitleMatchMode, 2

WinFocus()
{
    WinActivate, lineageM01
    WinWaitActive, lineageM01
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

Loop, 10
{
	WinFocus()
	Sleep, 1000
	MClick(930,70)
	Sleep, 500
	MClick(755,280)
	Sleep, 500
	MClick(755,535)
	Sleep, 500
	MClick(925,75)
	Sleep, 300
	MClick(755,120)
	Sleep, 500
	Loop, 30
	{
		StopApp()
		MClick(860,540)
		Sleep, 1000
		MClick(505,240)
		MClick(875,490)
		MClick(560,465)
		MClick(560,450)
		StopApp()
	}
	MClick(925,75)
	MClick(925,75)
}