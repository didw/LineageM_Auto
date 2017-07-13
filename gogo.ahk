
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
	WinFocus()
	Sleep, 2000
	Loop,
	{
		StopApp()
		Sleep, 100
		BackHome()
		WinFocus()
		ImageSearch, FoundX, FoundY, 755, 485, 815, 540, *80 hp_empty.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(900,500)
			ExitApp
		}
		ImageSearch, FoundX, FoundY, 755, 485, 815, 540, *80 red_hp_empty.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(900,500)
			ExitApp
		}
		StopApp()
		ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(840,500)
		}
		StopApp()
		ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *100 hp_red_165.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(770,500)
		}
		StopApp()
		ImageSearch, FoundX, FoundY, 695, 485, 750, 540, *150 broken_pade.png
		if ErrorLevel = 0
		{
			Loop, 5
			{
				Sleep, 200
				BackHome()
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
				if ErrorLevel = 0
				{
					WinFocus()
					MClick(840,500)
				}
				ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *100 hp_red_165.png
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

		if back_home = 0
		{
			backhome = 1
			Loop, 3
			{
				Sleep, 500
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *150 hp_red_90.png
				if ErrorLevel = 0
				{
					backhome = 0
				}
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
				if ErrorLevel = 0
				{
					backhome = 0
				}
			}
			if backhome = 1
			{
				WinFocus()
				MClick(900,500)
				back_home = 1
			}
		}
		StopApp()
	}
}