
#
#
#Ahk2exe.exe /in "sqrl-ahk-compiled.ahk" /icon "MyIcon.ico""
#"C:\Program Files\AutoHotkey\Compiler\Ahk2exe.exe" /in sqrl-ahk-compiled.ahk /out ..\sqrl-ahk-compiled.exe
#
#

# The & before Ahk2exe.exe is SUPER IMPORTANT!
Get-Content ..\*.ahk | Set-Content sqrl-ahk.bundled.ahk
& "C:\Program Files\AutoHotkey\Compiler\Ahk2exe.exe" /in "sqrl-ahk.bundled.ahk" /out "sqrl-ahk-compiled.exe"



#Start-Process sqrl-ahk-compiled.exe
