;
; CTRL  = ^
; ALT   = !
; SHIFT = +
; Script executes on CTRL+; (semi-colon).
; Using semi-colon to expand on Evernote (CTRL+SHIFT+;) and MS Excel (CTRL+;).
; @return Outut current date in ISO format (e.g. 2019-08-12).
; @author gitgreg@dalyle.io
;


TimezoneString := "MDT"
; TimezoneString := "TST"     ; Test Timezone
;                             ;  Keep after real values for easy testing
;                             ;  by uncommentiong that line to override the variable.


;
; --- --- ---
;

#SingleInstance, Force ; skips the dialog box and replaces the old instance automatically

; @example
;    2022-05-25
^;::
FormatTime, CurrentDate,, yyyy-MM-dd
SendInput %CurrentDate%
return

; @example
;    13:05 MDT
; FormatTime, CurrentTime,, HH:mm:ss ; <--- with Seconds (`:ss`)
!;::
FormatTime, CurrentTime,, HH:mm
SendInput %CurrentTime% %TimezoneString%
return


; Date and Time w/ Timezone (hard coded :sad_face:)
; TODO: Determine Timezone from Envrionment Variables or something?
;       One option on forums is calculating diff between localtime and remote time.
;       Seemed like a lot of work to just have to remember to change it once a year.
^!;::
FormatTime, CurrentDate,, yyyy-MM-dd
FormatTime, CurrentTime,, HH:mm:ss
SendInput %CurrentDate% at %CurrentTime% %TimezoneString%
return
