
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
		ImageSearch, FoundX, FoundY, 630, 315, 685, 370, *150 pk_detect.png
		if ErrorLevel = 0
		{
			WinFocus(g_window)
			MClick(720,375)
			MClick(660,345)
			Loop, 30
			{
				MClick(325,415)
			}
			MClick(580,345)
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