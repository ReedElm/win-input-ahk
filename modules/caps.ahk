;
; Repurpose Capslock, sometimes Tab
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
; The F13/F14 mappings are considered intermediates. They aren't physically present on modern keyboards,
; do not correspond to any built-in actions in Windows, and often cannot be assigned in-app.
;
; Instead, intermediates are remapped to standard keys depending on context.
; This preempts cyclic binds, (some) context-specific conflicts, and undesired input outcomes
; that might otherwise occur when the script is not running.
;

; Emacs
#IfWinActive ahk_class Emacs
F13::Escape

; StarCraft II
#IfWinActive ahk_class StarCraft II
; Modifier wildcards ensure compatbility with TheCore Lite etc.
*F13::k
*F14::i

; World of Warcraft
#IfWinActive ahk_class GxWindowClass
F13::Control

; Escape from Tarkov
#IfWinActive ahk_exe EscapeFromTarkov.exe
F13::k

; Other/None:
#IfWinActive
F14::Tab ; Restore default behavior for Tab
