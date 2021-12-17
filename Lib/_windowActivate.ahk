#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

_windowActivate(appName,dir){
    IfWinExist, ahk_exe %appName%
        WinActivate, ahk_exe %appName%
    Else
        Run, %appName% , %dir%
}
Return