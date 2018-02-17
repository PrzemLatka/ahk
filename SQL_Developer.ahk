;===================================================================
; SQL DEVELOPER
;===================================================================
;------------------------ Autorun -------------------------------------
#SingleInstance, force
#EscapeChar /
v_susp:=0
return
;------------------------ MGMT -------------------------------------
; >>> Suspend all hotkeys:
ESC & F1::ExitApp
	return
	
; >>> Suspend all hotkeys:
ESC & F2::
	Suspend
	If (v_susp=0) {
		Msgbox, Hotkeys suspended
		v_susp:=1
		} else {
		Msgbox, Hotkeys enabled
		v_susp:=0
		}
	return


; ------------------------------------------------------------------
; 				RUN SCRIPT!!!
; ------------------------------------------------------------------


; ------------------------------------------------------------------
; 				Utilities
; ------------------------------------------------------------------
;#IfWinActive, Oracle SQL Developer
NumpadIns::
	CoordMode, Caret, Client
	Send {Click %A_CaretX%, %A_CaretY% 2}
return


; ------------------------------------------------------------------
; 				commands		
; ------------------------------------------------------------------
-- ------ execute line and go to results pane
#IfWinActive, Oracle SQL Developer
capslock & \::
	Send {End}+{Home}^{Enter}
return


; ------------------------------------------------------------------
; 				Navigation
; ------------------------------------------------------------------
-- ------ Tab Left
#IfWinActive, Oracle SQL Developer
LAlt & Left::
	Send ^+{F6}
return

-- ------ Tab Right
#IfWinActive, Oracle SQL Developer
LAlt & Right::
	Send ^{F6}
return

-- ------ Results pane
#IfWinActive, Oracle SQL Developer
capslock & 9::
	Send !{PgDn}
return
-- ------ script pane
#IfWinActive, Oracle SQL Developer
capslock & 0::
	Send !{PgUp}
return

-- ------ Connections
#IfWinActive, Oracle SQL Developer
Capslock & 1::
	Send !vc
return

; ------------------------------------------------------------------
; 				Code Formatting
; ------------------------------------------------------------------
AppsKey & 1::
	clipboard=-- -----------------------------------------------------------------------------
	Send {Home}^v{Enter}
return

AppsKey & 2::
	clipboard=-- =============================================================================
	Send {Home}^v{Enter}
return




; ------------------------------------------------------------------
; 				Getting Overview
; ------------------------------------------------------------------

;AppsKey & c::
;	Send ^c{End}{Enter}
	;table:=clipboard
	;Send {raw}SELECT COUNT(*) AS NbrRec FROM %table%
	;Send +{Home 2}{F9}
	;sleep, 5000
	;Send {Del}{BS}
;return



; ------------------------------------------------------------------
; 				Repetitive Tasks
; ------------------------------------------------------------------

;---------- 
;AppsKey & 1::
;	Send ^c
;	Send ISNULL(^v,'Not Matched') as ^v 
;	;Send {Space}	
;return

;---------- 
;AppsKey & 2::
;	Send ^c
;	ClipBoard0  = %ClipBoard%
;	
;	StringGetPos, pos, ClipBoard0, .
;	StringLen, length, ClipBoard0
;
;	StringMid, out, ClipBoard0, 1, %pos%
;	asd:=pos+2
;
;	StringMid, name, ClipBoard0, %asd%, %length%
;	Send ISNULL(%ClipBoard0%,'Not in %out%') as %name% 
;	;Send {Space}	
;return

; ------------------------------------------------------------------
; 				Folders
; ------------------------------------------------------------------
















