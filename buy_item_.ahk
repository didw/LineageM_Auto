
SetTitleMatchMode, 2

g_window = 2
WinFocus(window)
{
	if window = 1
	{
	    WinActivate, lineageM02
	    WinWaitActive, lineageM02
	}
	if window = 2
	{
	    WinActivate, lineageM03
	    WinWaitActive, lineageM03
	}
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
Loop,
{
	WinFocus(g_window)
	Sleep, 2000
	Loop,
	{
		StopApp()
		MClick(695,445)
		Sleep, 1000
		MClick(400,200)
		MClick(710,400)
		MClick(445,380)
		StopApp()
	}
}