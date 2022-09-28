#NoEnv
#UseHook, On
SendMode Input

; Ensure capslock is off at all times
SetCapsLockState, AlwaysOff

;
; Keys remapped on the OS level:
; 	Capslock -> F13
; 	Tab -> F14
;
; Use SharpKeys (https://github.com/randyrants/sharpkeys) or regedit to achieve this.
;
; This ensures the caps key cannot turn on capslock mode when this script isn't running,
; and serves as a workaround to intercept global Windows built-ins such as alt+tab window switching, 
; while allowing us to turn them back on for contexts where the behavior is desired (such as the desktop).
;
; The F13/F14 mappings are considered intermediates. They aren't physically present on modern keyboard,
; do not correspond to any built-in actions in Windows, and often cannot be assigned in-app.
;
; Instead, intermediates are remapped below to standard keys. This preempts cyclic binds,
; (some) context-specific conflicts, and undesired input outcomes while this script is not running.
;

;
; Remap intermediates to desired actions depending on context:
;

; Context: StarCraft II
#IfWinActive ahk_class StarCraft II
; Modifier wildcards ensure compatbility with TheCore Lite etc.
*F13::k
*F14::i

; Other/None:
#IfWinActive
F13::Escape ; vim
F14::Tab ; Restore default behavior for Tab
