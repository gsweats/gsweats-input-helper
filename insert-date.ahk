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