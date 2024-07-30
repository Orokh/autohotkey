#SingleInstance Force

; Load library
#Include komorebic.lib.ahk
; Load configuration
#Include komorebi.generated.ahk

*CapsLock::

#HotIf GetKeyState("CapsLock","P")

; Focus windows

h::Focus("left")
j::Focus("down")
k::Focus("up")
l::Focus("right")

+(::CycleFocus("previous")
+)::CycleFocus("next")

; Move windows

+h::Move("left")
+j::Move("down")
+k::Move("up")
+l::Move("right")

+Enter::Promote()

; Workspaces

&::FocusWorkspace(0)
é::FocusWorkspace(1)
"::FocusWorkspace(2)
'::FocusWorkspace(3)

; Move windows across workspaces

+&::MoveToWorkspace(0)
+é::MoveToWorkspace(1)
+"::MoveToWorkspace(2)
+'::MoveToWorkspace(3)

; Stack windows
Left::Stack("left")
Right::Stack("right")
Up::Stack("up")
Down::Stack("down")
!::Unstack()

(::CycleStack("previous")
)::CycleStack("next")

; Resize
=::ResizeAxis("horizontal", "increase")
-::ResizeAxis("horizontal", "decrease")
+=::ResizeAxis("vertical", "increase")
+-::ResizeAxis("vertical", "decrease")

#HotIf

; ; Manipulate windows
; !t::ToggleFloat()
; !+f::ToggleMonocle()

; ; Window manager options
; !+r::Retile()
; !p::TogglePause()

; ; Layouts
; !x::FlipLayout("horizontal")
; !y::FlipLayout("vertical")