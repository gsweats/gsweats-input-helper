; ! = Alt
; ^ = Control
; + = Shift
; Script executes on CTRL+; (semi-colon).
; Using semi-colon to expand on Evernote (CTRL+SHIFT+;) and MS Excel (CTRL+;).
; @return Outut current date in ISO format (e.g. 2019-08-12).
; @author gitgreg@dalyle.io
^;::
FormatTime, CurrentDate,, yyyy-MM-dd
SendInput %CurrentDate%
return

!;::
FormatTime, CurrentTime,, HH-mm-ss
SendInput %CurrentTime%
return


^+;::
FormatTime, CurrentDate,, yyyy-MM-dd
FormatTime, CurrentTime,, HH:mm:ss
SendInput %CurrentDate% at %CurrentTime%
return
