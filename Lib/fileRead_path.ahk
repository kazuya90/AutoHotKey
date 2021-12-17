#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

fileRead_path(path,i){
    FileReadLine,line,%path%,%i%
    Clipboard = %line%
    Return
}