#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

imgSearch(path){
    ImageSearch,FoundX,FoundY, 40,40, 900, 900, %path%
    If ErrorLevel == 2
        MsgBox Could not conduct the search.
    Else If ErrorLevel = 1
        MsgBox Icon could not be found on the screen.
    Else
        MsgBox The icon was found at %FoundX% x %FoundY%.
    }
