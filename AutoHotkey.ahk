#Persistent
#SingleInstance, force
.
.
.
SetTitleMatchMode, 2

Return

vk1C::Return
vk1D::Return
vk1D & J::Send,{Down}
vk1D & K::Send,{Up}
vk1D & L::Send,{Right}
vk1D & H::Send,{Left}
vk1D & Y::Send,^c
vk1D & P::Send,^v
vk1D & vkBB::Send,{AltDown}{Tab}{Altup}




#IfWinActive, ahk_exe WINWORD.EXE
vk1D & I::Send,{Home}
vk1D & E::Send,{End}
vk1D & R::Send,{AltDown}E{AltUp}
vk1D & C::Send,{AltDown}C{AltUp}

#IfWinActive 

#IfWinActive, ahk_exe EXCEL.EXE
vk1D & F::
Send,{AltDown}{Down}{AltUp}{E}
vk1D & G::
Send,{CtrlDown}{Home}{CtrlUp}
#IfWinActive
Return