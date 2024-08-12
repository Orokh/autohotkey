#Requires AutoHotkey v2.0

; Load library
#Include fancywm.lib.ahk

InstallKeybdHook

; Disable Capslock by default
; Double-tap to switch state

CapsLock::{
    if (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 300) {
        SetCapsLockState !GetKeyState("CapsLock", "T")
    }
}

; Add Capslock as modifier for every keybind below

#HotIf GetKeyState("CapsLock", "P")

; Media management

Home:: Media_Prev
End:: Media_Next
Space:: Media_Play_Pause
PgDn:: Volume_Down
PgUp:: Volume_Up

; Misc

+x:: {
    Send "!{f4}"
    return
}

; ###########
; # FancyWM #
; ###########

; Focus desktop

&::FocusDesktop(1)
é::FocusDesktop(2)
"::FocusDesktop(3)
'::FocusDesktop(4)

; Move windows across desktops

+&::MoveToDesktop(1)
+é::MoveToDesktop(2)
+"::MoveToDesktop(3)
+'::MoveToDesktop(4)

; Focus windows

h::Focus("Left")
j::Focus("Down")
k::Focus("Up")
l::Focus("Right")

; Move windows

+h::Move("Left")
+j::Move("Down")
+k::Move("Up")
+l::Move("Right")

Enter::Promote()

; Resize

=::Resize("Width", "Increase")
-::Resize("Width", "Decrease")
+=::Resize("Height", "Increase")
+-::Resize("Height", "Decrease")

; Layouts

s::CreateLayout("Stack")
v::CreateLayout("Vertical")
+v::CreateLayout("Horizontal")

#HotIf