;
; CTRL  = ^
; ALT   = !
; SHIFT = +
; Script executes on CTRL+; (semi-colon).
; Using semi-colon to expand on Evernote (CTRL+SHIFT+;) and MS Excel (CTRL+;).
; @return Outut current date in ISO format (e.g. 2019-08-12).
; @author gitgreg@dalyle.io
;

; TIP:
; > From April to October, Mountain Daylight Time is observed
; > in Alberta, the Northwest Territories and parts of Nunavut.
; > From October to April, Mountain Standard Time is in effect.
; >
; > #source https://www.btb.termiumplus.gc.ca/tpv2guides/guides/wrtps/index-eng.html?lang=eng&lettr=indx_catlog_m&page=9Zp_IHFcKf28.html

; HARD TO FIND THE GMT OFFSET:
; https://greenwichmeantime.com/time-zone/usa/mountain-daylight-time/

; MDT - Mountain Daylight Time
TimezoneString := "MDT (GMT -06:00)"
; MST — Mountain Standard Time
; TimezoneString := "TST"     ; Test Timezone
;                             ;  Keep after real values for easy testing
;                             ;  by uncommentiong that line to override the variable.



; https://extranet.education.alberta.ca/pasidevnet/Docs/Business/data_format_guidelines.html

; ### Times

; #### External Format: HH:MM (a.m./p.m.) {optional timezone}

; -   Timezone can be specified globally on the view, or individually on each timestamp.
; -   Using the Alberta Time is preferred over the user's timezone \*
; -   Single digit hours will be prefixed with a zero, e.g. 01:32 p.m.

; ## Internal Format: HH:MM {AM/PM}

; -   Alberta Time Zone is always used
; -   Single digit hours will be prefixed with a zero, e.g. 01:32 PM


; https://imtpolicy.sp.alberta.ca/standards/Pages/Data-Exchange-Standard-Date,-Time,-and-Date-and-Time.aspx

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
