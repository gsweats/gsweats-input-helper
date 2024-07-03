; ! = Alt
; ^ = Control
; + = Shift
; Script executes on CTRL+SHIFT+ALT+; (semi-colon).
; Using semi-colon to expand on Evernote (CTRL+SHIFT+;) and MS Excel (CTRL+;).
; @return Outut current date in ISO format (e.g. 2019-08-12).
; @author sqrl@sqrl.ca
!^+;::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
return﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
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
; ! = Alt
; ^ = Control
; + = Shift
; Map PrtSc on my Lenovo X1 Extreme to right click.
; https://superuser.com/questions/793290/change-prtsc-button-behavior-to-perform-right-click
;
; @author sqrl@sqrl.ca
; @since  2020-11-05
#InstallKeybdHook
PrintScreen:: Click right
return
; ! = Alt
; ^ = Control
; + = Shift
; Restore some F-Keys on Logitech K-860 Keyboard
; @author sqrl@sqrl.ca
; @since  2020-06-13
#InstallKeybdHook
>!Tab::
; FormatTime, CurrentDateTime,, yyyy-MM-dd
; SendInput %CurrentDateTime%
!F4
return