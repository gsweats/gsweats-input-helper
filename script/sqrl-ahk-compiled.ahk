;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win7
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; General remapping script for AutoHotkey

; The behaviour is such that the control key is located on the home
; row. CapsLock serve as Control, but with one detail: when
; pressed alone (fast enough), it has a different behaviour. When
; CapsLock is pressed fast, it behaves as a Escape key

; These ideas came from three blog posts, targeted at Mac users:
; 
; http://batsov.com/articles/2012/12/06/emacs-tip-number-7-remap-return-to-control-in-osx/
; http://brettterpstra.com/2012/12/08/a-useful-caps-lock-key/
; http://stevelosh.com/blog/2012/10/a-modern-space-cadet/

; The basic algorithm come from this discussion:
; https://superuser.com/questions/223831/remap-a-key-depending-on-whether-it-was-pressed-alone-or-not

; The limit for 'fast enough' is 150 ms, but this may change

; I am still learning AutoHotkey, so there is much room to improve

; ---
CapsLock::LCtrl
; RCtrl::RWin
; I use right ctrl for CTRL+R reload (Greg 2021-04-26)
RAlt::RWin

;-- when pressing CapsLock alone, it will activate the Escape button
Capslock Up:: 
SendInput, {LControl Up}  ;--For stability
If A_TimeSincePriorHotkey < 150
{
  SendInput, {Escape}   
}
Else
return
return








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
return
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
; ! = Alt
; ^ = Control
; + = Shift
; Map PrtSc on my Lenovo X1 Extreme to right click.
; https://superuser.com/questions/793290/change-prtsc-button-behavior-to-perform-right-click
;
; @author sqrl@sqrl.ca
; @since  2020-11-05
#SingleInstance Force
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
;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win7
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; General remapping script for AutoHotkey

; The behaviour is such that the control key is located on the home
; row. CapsLock serve as Control, but with one detail: when
; pressed alone (fast enough), it has a different behaviour. When
; CapsLock is pressed fast, it behaves as a Escape key

; These ideas came from three blog posts, targeted at Mac users:
; 
; http://batsov.com/articles/2012/12/06/emacs-tip-number-7-remap-return-to-control-in-osx/
; http://brettterpstra.com/2012/12/08/a-useful-caps-lock-key/
; http://stevelosh.com/blog/2012/10/a-modern-space-cadet/

; The basic algorithm come from this discussion:
; https://superuser.com/questions/223831/remap-a-key-depending-on-whether-it-was-pressed-alone-or-not

; The limit for 'fast enough' is 150 ms, but this may change

; I am still learning AutoHotkey, so there is much room to improve

; ---
CapsLock::LCtrl
; RCtrl::RWin
; I use right ctrl for CTRL+R reload (Greg 2021-04-26)
RAlt::RWin

;-- when pressing CapsLock alone, it will activate the Escape button
Capslock Up:: 
SendInput, {LControl Up}  ;--For stability
If A_TimeSincePriorHotkey < 150
{
  SendInput, {Escape}   
}
Else
return
return








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
return
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
; ! = Alt
; ^ = Control
; + = Shift
; Map PrtSc on my Lenovo X1 Extreme to right click.
; https://superuser.com/questions/793290/change-prtsc-button-behavior-to-perform-right-click
;
; @author sqrl@sqrl.ca
; @since  2020-11-05
#SingleInstance Force
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
#NoEnv
#NoTrayIcon
Master = _run-all.ahk              ;name of master file

Loop *.ahk                       ;loop through all AHK scripts in current folder
{
	if (A_LoopFileName != Master) ;as long as it is not the master script
	{
		Run %A_LoopFileName%       ;run the current script
	}
}

ExitApp

; https://autohotkey.com/board/topic/59609-launch-all-scripts-in-a-single-folder/
#NoEnv
#NoTrayIcon
Master = _run-all.ahk              ;name of master file

Loop *.ahk                       ;loop through all AHK scripts in current folder
{
	if (A_LoopFileName != Master) ;as long as it is not the master script
	{
		Run %A_LoopFileName%       ;run the current script
	}
}

ExitApp

; https://autohotkey.com/board/topic/59609-launch-all-scripts-in-a-single-folder/
