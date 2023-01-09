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
>!s::Send {U+00DF}
; €
>!5::Send {U+20AC}
