#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

openURL(url){
Send,^t
Send ^l
SendInput, %url%
Send,{Enter}
}