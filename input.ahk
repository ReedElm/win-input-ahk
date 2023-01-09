#NoEnv
#SingleInstance force
#UseHook, On
SetWorkingDir % A_ScriptDir
SendMode Input

; Ensure capslock is off at all times
SetCapsLockState, AlwaysOff

;
; Support German umlauts and symbols on a plain US keyboard layout
;
#include modules/umlauts.ahk

;
; Repurpose Capslock, sometimes Tab
;
#include modules/caps.ahk

;
; Restore absent c-w behavior in various applications
;
#include modules/c-w.ahk
