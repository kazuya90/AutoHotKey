#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;#IfWinActive, ahk_exe chrome.exe
#IfWinActive, ahk_exe chrome.exe
vk1C & q::Run, chrome.md
vk1C & x::^F4
vk1C & Space::^Tab
vk1C & m::Send, {Shift} & {Alt} & {b}
vk1C & f::^t
vk1C & j::PgDn
vk1C & k::PgUp
vk1C & b::!Left
vk1C & w::!Right

;openAll
vk1C & Numpad1::
openURL("https://atcoder.jp/")
openURL("https://kenkoooo.com/atcoder/")
openURL("https://qiita.com/e869120/items/eb50fdaece12be418faa")
Return

#ifWinActive