
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
	MClick(475,415)
	MClick(740,60)
	MClick(605,230)
	Sleep, 1000
	MClick(620,440)
	Sleep, 1000
	MClick(740,60)
	MClick(605,105)
	Sleep, 1000
	MClick(85,100)
	Loop, 30
	{
		StopApp()
		MClick(695,445)
		Sleep, 1000
		MClick(400,200)
		MClick(710,400)
		MClick(445,380)
		StopApp()
	}
	MClick(740,60)
	MClick(740,60)
}