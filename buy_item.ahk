
SetTitleMatchMode, 2

g_window = 1
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
	Sleep, 200
	MouseClick, left, x, y
	Sleep, 200
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
		Sleep, 5000
		WinFocus(g_window)
		ImageSearch, FoundX, FoundY, 577, 188, 588, 200, *100 less_100.png
		if ErrorLevel = 0
		{
			WinFocus(g_window)
			MClick(400,200)
			MClick(710,400)
			MClick(445,380)
		}
		if g_window = 1
		{
			g_window = 2
		}
		else
		{
			g_window = 1 
		}
		StopApp()
	}
}