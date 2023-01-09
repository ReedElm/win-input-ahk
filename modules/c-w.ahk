;
; Restore absent c-w behavior in various applications
;


; Calculator
#IfWinActive Calculator
^w::WinClose

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
