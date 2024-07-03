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