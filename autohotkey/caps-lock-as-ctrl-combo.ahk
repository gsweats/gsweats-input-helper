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
;CapsLock::LCtrl


;
; 2022-01-08 - Switch to CTRL + SHIFT to mimick Moonlander /@gsteve3
; @link [How to Combine CTRL and SHIFT](https://www.autohotkey.com/docs/Hotkeys.htm#combo)
;

; https://www.autohotkey.com/docs/commands/Send.htm#SendInput
; > SendInput and SendPlay [v1.0.43+]:
; > SendInput and SendPlay use the same syntax
; > as Send but are generally faster and more reliable.
; Sweet - good to know.

;
; 2022-01-08 PREVIOUS LINE BEFORE CTRL+SHIFT instead of CTRL alone. /@gsteve3
;
; CapsLock::LCtrl+LShift


CapsLock::
  SendInput ^{Shift}



; RCtrl::RWin
; I use right ctrl for CTRL+R reload (Greg 2021-04-26)
; 2022-01-08: Disabled, prefer alt at the moment b/c of habits with Moonlander keyboard :) /@gsteve3
; RAlt::RWin

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
