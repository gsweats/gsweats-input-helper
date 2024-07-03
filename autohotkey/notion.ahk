#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; https://www.reddit.com/r/Notion/comments/hc11z3/i_wrote_an_autohotkey_script_that_creates_a_new/
; ! = Alt, ^ = Control, + = Shift
^+!space::
    IfWinNotExist, ahk_class  Chrome_WidgetWin_1 ahk_exe Notion.exe
	{
		Run C:\Users\greg\AppData\Local\Programs\Notion\Notion.exe
		WinActivate ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
		Sleep, 5500
		send, ^n
	}
	IfWinExist
	{
		WinActivate ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
		send, ^n
	}
return

; Notion Search
^+!f::
    IfWinNotExist, ahk_class  Chrome_WidgetWin_1 ahk_exe Notion.exe
	{
		Run C:\Users\greg\AppData\Local\Programs\Notion\Notion.exe
		WinActivate ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
		Sleep, 5500
		send, ^n
	}
	IfWinExist
	{
		WinActivate ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
		send, ^p
	}
return
