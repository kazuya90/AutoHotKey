#Persistent
#SingleInstance, force
.
.
.
Return
#Include, chrome.ahk

;keycode;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CapsLock         vkF0
;ひらがなカタカナ   vkF2
;変換              vk1C
;無変換            vk1D
;エスケープ '

;AutoHotkey操作;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;カタカナひらがな　中断再開
vk1D & vkF2::Pause
;Esc リロード
vk1D & Esc::Reload ; Exit script with Escape key 
;keycode help
vk1D & /::Run,chrome.exe "http://ahkwiki.net/KeyList#Key_Slash"
;windowSpy
vk1D & Numpad9::Run,"C:\Program Files\AutoHotkey\WindowSpy.ahk"


;WorkSpace;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;AutoHotkey.ahk
vk1d & F1::Run,C:\Users\zutty\OneDrive\AutoHotKey\AutoHotKey.code-workspace
;atCoder
vk1d & F2::Run,E:\kazuya90\atCoder\atCoder.code-workspace
;Vim
vk1d & F3::Run,C:\Users\zutty\OneDrive\Vim\vim.code-workspace
;vk1d & F4::Run,
;vk1d & F5::Run,
;vk1d & F6::Run,
;vk1d & F7::Run,
;vk1d & F8::Run,
;vk1d & F9::Run,
;vk1d & F10::Run,
;vk1d & F11::Run,
;vk1d & F12::Run,



;Application起動;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Vim
vk1D & NumpadDot::_windowActivate("gvim.exe","C:\Program Files (x86)\Vim\vim82")
;PowerShell
vk1D & Numpad3::_windowActivate("Windows PowerShell","C:\Users\zutty\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell")
;chrome
vk1D & Numpad1::_windowActivate("chrome.exe","C:\Users\zutty\OneDrive\ショートカット\tool")
;Tablacus
vk1D & numpad0:: _windowActivate("TE64.exe","C:\Users\zutty\OneDrive\Tablacus\te211211")
;クラロワ
vk1D & numpad4:: _windowActivate("LDPlayer4.lnk","C:\Users\zutty\OneDrive\ショートカット\tool")

;全般;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ウィンドウ;;;;;;;;;;;;;;;;;;;;;;;
vk1D & Space::AltTab
;最小化
vk1D & Down::#Down
;最大化
vk1D & Up::#Up
;閉じる
vk1D & E::!F4
;左右最大化
vk1D & Left::
Send,#{Left}
;Send,{Esc}
Return
vk1D & Right::
Send,#{Right}
;Send,{Esc}
Return

;全般;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;プリントスクリーン
vk1D & PrintScreen::Send,#!{PrintScreen}

;移動
vk1D & J::Send,{Down}
vk1D & K::Send,{Up}
vk1D & L::Send,{Right}
vk1D & H::Send,{Left}
;コピペ
vk1D & f::Send,+{Right}
vk1D & d::Send,+{Left}
vk1D & Y::Send,^c
vk1D & P::Send,^v

;copy & paste 課題;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;copy
i := 1
flg = 0
;F14::imgSearch()
;Return

F13::
Loop{
Send,{LButton}
Sleep, 50
Send,^c
Sleep,100
Send, ^{End}
Sleep, 100
MouseClick, Left,470,200
Sleep, 100
Send, {LButton}
Send, {LButton}
Send, {LButton}
fileRead_path("kigyo.txt",i)
Send,^v
Send, {Enter}
MouseMove, 200,500
i++
Sleep,1000
}
Return
