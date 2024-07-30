Focus(operation_direction) {
    RunWait("fancywm.exe --action MoveFocus" operation_direction, , "Hide")
}

Move(operation_direction) {
    RunWait("fancywm.exe --action Move" operation_direction, , "Hide")
}

Promote() {
    RunWait("fancywm.exe --action PullWindowUp", , "Hide")
}

Resize(axis, sizing) {
    RunWait("fancywm.exe --action " sizing "" axis, , "Hide")
}

FocusDesktop(target) {
    RunWait("fancywm.exe --action SwitchToDesktop" target, , "Hide")
}

MoveToDesktop(target) {
    RunWait("fancywm.exe --action MoveToDesktop" target, , "Hide")
}

CreateLayout(type) {
    RunWait("fancywm.exe --action Create" type "Panel", , "Hide")
}

; Swap the focused window.
; Run fancywm.exe --action SwapLeft
; Run fancywm.exe --action SwapUp
; Run fancywm.exe --action SwapRight
; Run fancywm.exe --action SwapDown

; Temporarily toggle the window management functionality in FancyWM.
; Run fancywm.exe --action ToggleManager

; Toggle floating mode for the active window.
; Run fancywm.exe --action ToggleFloatingMode

; Manually refresh the window positions.
; Run fancywm.exe --action RefreshWorkspace