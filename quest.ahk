
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
		ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(840,500)
		}
		ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *120 hp_red_165.png
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
				Sleep, 100
				BackHome()
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
				if ErrorLevel = 0
				{
					WinFocus()
					MClick(840,500)
				}
				ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *120 hp_red_165.png
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
		ImageSearch, FoundX, FoundY, 695, 485, 750, 540, *150 broken_sudan.png
		if ErrorLevel = 0
		{
			Loop, 5
			{
				Sleep, 100
				BackHome()
				ImageSearch, FoundX, FoundY, 85, 50, 95, 60, *80 hp_green_85.png
				if ErrorLevel = 0
				{
					WinFocus()
					MClick(840,500)
				}
				ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *120 hp_red_165.png
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
		backhome = 1
		Loop, 3
		{
			Sleep, 100
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
		}
		StopApp()
	}
	Loop, 10
	{
		Sleep, 200
		ImageSearch, FoundX, FoundY, 165, 50, 175, 60, *150 hp_red_165.png
		if ErrorLevel > 0
		{
			WinFocus()
			MClick(770,500)
		}
		StopApp()
	}
}