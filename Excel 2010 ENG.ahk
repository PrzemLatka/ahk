;==================================================
; EXCEL 2010 ENG
;==================================================

#EscapeChar /

#SingleInstance force
; ------------------------------------------------------------------
; 				RUN SCRIPT!!!
; ------------------------------------------------------------------
#IfWinActive, ahk_class C:\Users\Przemek Latka\Documents\Documents\AHK\Excel 2010 ENG.ahk
#a:: 
	Send ^s
	Run C:\Users\platka\Desktop\Excel 2010 ENG.ahk
return


; ------------------------------------------------------------------
; 			EXCEL
; ------------------------------------------------------------------

; ====================== navigation
;--move one sheet to the left
#IfWinActive, ahk_class XLMAIN
capslock & -::
	Send ^{PgUp}
return
;--move one sheet to the rigt
#IfWinActive, ahk_class XLMAIN
capslock & =::
	Send ^{PgDn}
return

;------ paste values:
#IfWinActive, ahk_class XLMAIN
Capslock & v::
	Send !hvv
return


;--------------------------------------------------
; CA
;--------------------------------------------------


-- ----------------- remove duplicates
#IfWinActive, ahk_class XLMAIN
AppsKey & /::
	Send !am
return

-- ----------------- sort ascending
#IfWinActive, ahk_class XLMAIN
AppsKey & ,::
	Send !asa
return



-- ----------------- New named Range
#IfWinActive, ahk_class XLMAIN
AppsKey & NumpadHome:: 
	Send !mn{Tab 3}{Enter}
return


-- ----------------- Data Validation list
#IfWinActive, ahk_class XLMAIN
AppsKey & NumpadUp::
	Send !avv{Tab}l{Enter}{Tab}
return


-- ----------------- Data Validation - any value
#IfWinActive, ahk_class XLMAIN
AppsKey & NumpadPgUp::
	Send !avv{Tab}a{Enter}{Tab 3}{Enter}
return


-- ----------------- GoTo
#IfWinActive, ahk_class XLMAIN
AppsKey & NumpadLeft::
	Send !hfdg
return

-- ----------------- Copy row hight
#IfWinActive, ahk_class XLMAIN
CapsLock & 1::
	Send !hoh
	sLEEP, 2000
	Send ^c
	Send {esc}
return

-- ----------------- Paste row hight
#IfWinActive, ahk_class XLMAIN
CapsLock & 2::
	Send !hoh
	sLEEP, 1000
	Send ^v
	Send {Enter}
return

-- ----------------- edit row hight
#IfWinActive, ahk_class XLMAIN
CapsLock & 3::
	Send !hoh

return




;--------------------------------------------------



;--------------- Normal cell style
#IfWinActive, ahk_class XLMAIN
PrintScreen & n:: 
	Send !hj{Home}{Down}{Enter}
return


;--------------- Copy Sheets Name
#IfWinActive, ahk_class XLMAIN
` & c:: 
	Send !ohr
	Send ^c{Esc}
return

;--------------- Vertical Windows
#IfWinActive, ahk_class XLMAIN
PrintScreen & v:: 
	Send !wav{Enter}
return

;--------------- Horizontal Windows
#IfWinActive, ahk_class XLMAIN
PrintScreen & h:: 
	Send !wao{Enter}
return
;--------------------------------------------------
; Formatting
;--------------------------------------------------
PrintScreen & F12::
	Send ^1{Tab}{Up 13}{Down}{Tab 2}{Space}{Enter}
return
;--------------------------------------------------
; Tables
;--------------------------------------------------
;------- create table with the same name as sheet name
NumpadDel & t::
	Send !ohr
	Send ^c{Esc}
	Send ^t{Enter}
	sleep, 1000
	Send {LAlt}jta
	Send ^v{Enter}
return

;------- change table name to the be the same as sheet name
NumpadDel & n::
	Send !ohr
	Send ^c{Esc}
	sleep, 1000
	Send {LAlt}jta
	Send ^v{Enter}
return

;--------------------------------------------------
; Font Colour
;--------------------------------------------------
;--------------- AUTOMATIC
#IfWinActive, ahk_class XLMAIN
PrintScreen & 1:: 
	Send !hfc{Enter}
return

;--------------- RED
#IfWinActive, ahk_class XLMAIN
PrintScreen & 2:: 
	Send !hfc{Down 1}{Enter}
return

;--------------- BLUE
#IfWinActive, ahk_class XLMAIN
PrintScreen & 3:: 
	Send !hfc{Down 1}{Left 1}{Enter}
return

;--------------- GREEN
#IfWinActive, ahk_class XLMAIN
PrintScreen & 4:: 
	Send !hfc{Up 2}{Left 4}{Enter}
return

;--------------------------------------------------
; Font
;--------------------------------------------------
;--------------- Superscript (in text box)
#IfWinActive, ahk_class XLMAIN
PrintScreen & Up:: 
	Send !hfn{Tab 8}{space}{Tab 6}{Enter}
return




;--------------------------------------------------
; Operations
;--------------------------------------------------
;------ paste format:
#IfWinActive, ahk_class XLMAIN
` & 1::
	Send {LAlt}hvr
return

;------ paste values:
;#IfWinActive, ahk_class XLMAIN
;` & 2::
;	Send {LAlt}hvv
;return



;------ paste transposed
;#IfWinActive, ahk_class XLMAIN
;` & 4::
	;Send {LAlt}hvt
;return

;--------------------------------------------------
; Pivot Tables
;--------------------------------------------------
;------ Pivot Table Options
#IfWinActive, ahk_class XLMAIN
NumpadIns::
	Send {LAlt}jtzptt
return

;------ Pivot Table Options -> Toggle Row Totals
#IfWinActive, ahk_class XLMAIN
NumpadIns & NumpadEnd::
	Send {LAlt}jtzptt{Tab}{Right}{Tab}s{Enter}
return

;------ Select whole table
#IfWinActive, ahk_class XLMAIN
NumpadIns & a::
	Send {LAlt}jtwt
return

;------ Copy whole Table
#IfWinActive, ahk_class XLMAIN
NumpadIns & c::
	Send {LAlt}jtwt
	Send ^c
return

;------ Delete Whole Table
#IfWinActive, ahk_class XLMAIN
NumpadIns & d::
	Send {LAlt}jtwt
	Send {del}
	Send !hj{Home}{Down}{Enter}
return

;------ Pivot Table Options -> Toggle Column Totals
#IfWinActive, ahk_class XLMAIN
NumpadIns & NumpadDown::
	Send {LAlt}jtzptt{Tab}{Right}{Tab}g{Enter}
return

;------ Toggle Field List
#IfWinActive, ahk_class XLMAIN
NumpadDel::
	Send {LAlt}jtl
return


;------ Clear All Filters
#IfWinActive, ahk_class XLMAIN
NumpadIns & w::
	Send {LAlt}jtef
return

;------ Change Data Source - when excel table is the source
#IfWinActive, ahk_class XLMAIN
NumpadIns & s::
	Send {LAlt}jtid
return

;------ Change Data Source to ....- when excel table is the source
#IfWinActive, ahk_class XLMAIN
Insert & s::
	Send {LAlt}jtid
	Send tbl_3_A ;<- ----------- CHANGE THIS ONE
	Send {Enter}
return

;================ Layout
;------ Regular PVT table view
#IfWinActive, ahk_class XLMAIN
NumpadIns & n::
	Send {LAlt}jypt
	Send {LAlt}jys{Home}{Enter}
return

;================ Calculated Fields
;------ Add calculated field
#IfWinActive, ahk_class XLMAIN
AppsKey & p::
	Send {LAlt}jtzxjf
return


;================ Field Options ---------------------------
;------ Open Field options
#IfWinActive, ahk_class XLMAIN
NumpadIns & q::
	Send {LAlt}jtzag
return

;================ Number Format
;------ Number, Toggle separator, 2 decimals
#IfWinActive, ahk_class XLMAIN
` & F1::
	Send {LAlt}jtzag{Tab 3}{Enter}{Tab}{n}{Tab}2{Tab}{Space}{Tab}{Up 5}{Enter 2}
return

;------ Number, Toggle separator, 0 decimals
#IfWinActive, ahk_class XLMAIN
` & F2::
	Send {LAlt}jtzag{Tab 3}{Enter}{Tab}{n}{Tab}0{Tab}{Space}{Tab}{Up 5}{Enter 2}
return

;------ Percentage, 2 decimals
#IfWinActive, ahk_class XLMAIN
` & F3::
	Send {LAlt}jtzag{Tab 3}{Enter}{Tab}{p}{Tab}2{Tab}{Enter 2}
return

;------ Percentage, 0 decimals
#IfWinActive, ahk_class XLMAIN
` & F4::
	Send {LAlt}jtzag{Tab 3}{Enter}{Tab}{p}{Tab}0{Tab}{Enter 2}
return

;================ Number Aggregation Type
;------ Summarize Values by: SUM
#IfWinActive, ahk_class XLMAIN
` & q::
	Send {LAlt}jtzxds
return

;------ Summarize Values by: COUNT
#IfWinActive, ahk_class XLMAIN
` & w::
	Send {LAlt}jtzxdc
	sleep, 500
	Send {LAlt}jtzag{Tab 3}{Enter}{Tab}{n}{Tab}0{Tab}{Space}{Tab}{Up 5}{Enter 2}
return

;------ Summarize Values by: AVERAGE
#IfWinActive, ahk_class XLMAIN
` & e::
	Send {LAlt}jtzxda
return

;------ Summarize Values by: MINIMUM
#IfWinActive, ahk_class XLMAIN
` & r::
	Send {LAlt}jtzxdi
return

;------ Summarize Values by: MAXIMUM
#IfWinActive, ahk_class XLMAIN
` & t::
	Send {LAlt}jtzxdm
return
;----------------------------------------------------
;------ Sort Pivot Field ASCENDING
#IfWinActive, ahk_class XLMAIN
NumpadIns & Up::
	Send {LAlt}jtsa
return

;------ Sort Pivot Field DESCENDING
#IfWinActive, ahk_class XLMAIN
NumpadIns & Down::
	Send {LAlt}jtsd
return
;--------------------------------------------------
; Text Box
;--------------------------------------------------

;------ Insert Full Blue Text Box, snapped to grid
#IfWinActive, ahk_class XLMAIN
Ins & b::
	Send {LAlt}nx
	CoordMode, Mouse, Screen
	MouseClickDrag, L, (A_ScreenWidth // 2), (A_ScreenHeight // 2), (A_ScreenWidth // 2 + 200), (A_ScreenHeight // 2 + 50)
	sleep,2000
	Send {LAlt}jdaap
	sleep,2000
	Send {LAlt}jdss{Home}{Right 1}{Down 3}{Enter}
return

;------ Change Full Text Box Colour to Blue
#IfWinActive, ahk_class XLMAIN
PrintScreen & F1::
	Send {LAlt}jdss{Home}{Right 1}{Down 3}{Enter}
return

;------ Change Full Text Box Colour to Red
#IfWinActive, ahk_class XLMAIN
PrintScreen & F2::
	Send {LAlt}jdss{Home}{Right 2}{Down 3}{Enter}
return

;------ Change to Border Text Box Colour to Blue
#IfWinActive, ahk_class XLMAIN
PrintScreen & F3::
	Send {LAlt}jdss{Home}{Right 1}{Enter}
return

;------ Change to Border Text Box Colour to Red
#IfWinActive, ahk_class XLMAIN
PrintScreen & F4::
	Send {LAlt}jdss{Home}{Right 2}{Enter}
return

;--------------------------------------------------
; PROJECT
;--------------------------------------------------
; -- ----------- SAVE as UNICODE
;Ins & y::
;		MsgBox, 4,, Would you like to continue? yes - will save the file
;	IfMsgBox Yes
;		{Send ^s
;		MsgBox Click OK if saving is done
;		MsgBox sadfasdfsadf
;	}else{
;	Msgbox quiting
;	}
;return
	

; -- ----------- SAVE as UNICODE
Ins & l::
		MsgBox, 4,, Would you like to continue? yes - will save the file
	IfMsgBox Yes
		{Send ^s
		MsgBox Click OK if saving is done
		Send ^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}^{PgUp}
		Send !ohr
		Send ^c{Esc}
		Send ^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}^{PgDn}
		Send {F12}
		sleep, 3000
		Send rawdata_
		Send ^v
		Send {Tab}{Down}u{Enter 4}		
	}else{
		Msgbox Quiting...
	}
	
	
return










+Esc:: ExitApp