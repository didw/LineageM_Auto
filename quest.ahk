
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
	MClick(75,215) 
	Sleep, 500
	MClick(580,480)
	Sleep, 1000
	MClick(725,425)
	Sleep, 2000
	Loop,
	{
		StopApp()
		Sleep, 500
		WinFocus()
		ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *100 hp_green_85.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(840,500)
		}
		ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *150 hp_red_165.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(770,500)
		}
		ImageSearch, FoundX, FoundY, 695, 485, 750, 540, *150 broken_pade.png
		if ErrorLevel = 0
		{
			Loop, 5
			{
				Sleep, 200
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *100 hp_green_85.png
				if ErrorLevel = 0
				{
					WinFocus()
					MClick(840,500)
				}
				ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *150 hp_red_165.png
				if ErrorLevel > 0
				{
					WinFocus()
					MClick(770,500)
				}
			}
			WinFocus()
			MClick(130,60)
			MClick(65,255)
			MClick(235,510)
			MClick(250,250)
			MClick(273,122)
		}

		ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *150 hp_red_90.png
		if ErrorLevel > 0
		{
			ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *100 hp_green_85.png
			if ErrorLevel > 0
			{
				WinFocus()
				MClick(900,500)
			}
		}
		StopApp()
	}
	Loop, 20
	{
		Sleep, 500
		ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *150 hp_red_165.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(770,500)
		}
		StopApp()
	}
}