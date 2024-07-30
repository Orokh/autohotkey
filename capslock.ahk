#Requires AutoHotkey v2.0

; Load library
#Include fancywm.lib.ahk

CapsLock::{
    try {
        ; Wait for Capslock to be released
        KeyWait "CapsLock"
        ; and pressed again within 0.2 seconds
        KeyWait "CapsLock", "D T0.2"
    }
    catch Error as err {
        return
    }
    else {
        if (A_PriorKey = "CapsLock") {
            SetCapsLockState !GetKeyState("CapsLock", "T")
        }
    }

    return
}

; Force capslock into a modifying key.

*CapsLock:: return

; Add Capslock as modifier for every keybind below

#HotIf GetKeyState("CapsLock","P")

; Media management

Home:: Media_Prev
End:: Media_Next
Space:: Media_Play_Pause
PgDn:: Volume_Down
PgUp:: Volume_Up

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
