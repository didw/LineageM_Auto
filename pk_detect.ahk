
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

BackHome()
{
	if GetKeyState("h")
	{
		MClick(900,500)
	}
} 

MClick(x,y)
{
	MouseMove, x, y
	Sleep, 100
	MouseClick, left, x, y
	Sleep, 100
}

back_home = 0
Loop,
{
	WinFocus(g_window)
	Sleep, 2000
	Loop,
	{
		StopApp()
		Sleep, 500
		WinFocus(g_window)
		ImageSearch, FoundX, FoundY, 713, 355, 728, 370, *150 pk_detect.png
		if ErrorLevel = 0
		{
			WinFocus(g_window)
			MClick(475,415)
		}
		ImageSearch, FoundX, FoundY, 1, 460, 8, 468, *150 pk_detect2.png
		if ErrorLevel = 0
		{
			WinFocus(g_window)
			MClick(475,415)
		}
		ImageSearch, FoundX, FoundY, 630, 315, 685, 370, *150 pk_detect3.png
		if ErrorLevel = 0
		{
			WinFocus(g_window)
			MClick(475,415)
		}
		StopApp()
		if g_window = 1
		{
			g_window = 2 
		}
		else
		{
			g_window = 1 
		}
	}
}