
SetTitleMatchMode, 2
WinFocus()
{		
    WinActivate, LineageM
    WinWaitActive, LineageM
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
	Sleep, 500
}

Loop,
{
	WinFocus()
	Sleep, 1000
	MClick(105,275)
	Sleep, 500
	MClick(790,655)
	Sleep, 1000
	MClick(1015,575)
	Sleep, 2000
	Loop,
	{
		escape = 1
		StopApp()
		Loop, 2
		{
			StopApp()
			WinFocus()
			ImageSearch, FoundX, FoundY, 170, 58, 195, 70, *130 hp_red_175.png
			if ErrorLevel = 0
			{
				escape = 0
			}
			ImageSearch, FoundX, FoundY, 100, 58, 114, 70, *50 hp_green.png
			if ErrorLevel = 0
			{
				escape = 0
			}
		}
		if escape = 1
		{
			WinFocus()
			MClick(1270,700)
			break
		}
		WinFocus()
		ImageSearch, FoundX, FoundY, 100, 58, 114, 70, *50 hp_green.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(1180,700)
		}
		ImageSearch, FoundX, FoundY, 253, 58, 267, 70, *150 hp_red.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(1100,700)
		}
		ImageSearch, FoundX, FoundY, 975, 665, 1042, 735, *150 broken_pade.png
		if ErrorLevel = 0
		{
			Sleep, 5000
			WinFocus()
			MClick(164,64)
			MClick(100,347)
			MClick(343,689)
			MClick(326,327)
			MClick(377,157)
		}
	}
	Loop, 30
	{
		Sleep, 1000
		ImageSearch, FoundX, FoundY, 253, 58, 267, 70, *150 hp_red.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(1100,700)
		}
		StopApp()
	}
}