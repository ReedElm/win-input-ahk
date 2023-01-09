#NoEnv
#UseHook, On
SendMode Input

; Ensure capslock is off at all times
SetCapsLockState, AlwaysOff


;
; Support German umlauts and symbols on a plain US keyboard layout
;
; ... by emulating the respective binds used by Windows' `United States-International` layout
;

; ä
>!q::Send {U+00E4}
; Ä
+>!q::Send {U+00C4}
; ü
>!y::Send {U+00FC}
; Ü
+>!y::Send {U+00DC}
; ö
>!p::Send {U+00F6}
; Ö
+>!p::Send {U+00D6}
; ẞ
>!s::Send {U+1E9E}
; €
>!5::Send {U+20AC}


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


;
; Restore absent c-W behavior in certain applications
;

; Discord
#IfWinActive ahk_exe Discord.exe
^w::WinClose

; Signal
#IfWinActive ahk_exe Signal.exe
^w::WinClose

; Steam
#IfWinActive ahk_exe steam.exe
^w::WinClose

; Epic Games Store
#IfWinActive ahk_exe EpicGamesLauncher.exe
^w::WinClose

; Battle.net
#IfWinActive ahk_exe Battle.net.exe
^w::WinClose

; GOG Galaxy
#IfWinActive ahk_exe GalaxyClient.exe
^w::WinClose
