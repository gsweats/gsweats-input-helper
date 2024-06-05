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