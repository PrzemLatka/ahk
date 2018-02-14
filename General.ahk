;==================================================
; GENERAL
;==================================================

#EscapeChar /

#SingleInstance force
; ------------------------------------------------------------------
; 				RUN SCRIPT!!!
; ------------------------------------------------------------------


;-------------------- open url
` & r:: 
	Clipboard:=""
	Send ^c
	Sleep 200 
	Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe ""%clipboard%""
return


; ------------------------------------------------------------------
; 			HOTSTRINGS
; ------------------------------------------------------------------
; ======SQL
;---- syntax
	:O:s;::select
		return
	:O:f;::from
		return		
	:O:w;::
		Send where
		return		
	:O:g;::group by 
		return
	:O:o;::order by
		return	
	
	:O:opp;:: over (partition by
		return
	
	:O:lf;::left join
		return
	:O:ij;::inner join
		return
	
	:O:c;::
		Send count()
		Send {Left}
		return
	:O:cd;::
		Send count(distinct)
		Send {Left}{Space}
		return
	
	:O:inn;::is not null
		return

-- db objects
	:O:'l;::load_offer_id
		return
	:O:s';::source_id
		return
	:O:sp';::source_product_id
		return
	:O:'j;::job_instance_id
		return
	:O:'t;::tuple_id
		return
	:O:'coi;::client_org_id
		return
	:O:'co;::created_on
		return
	:O:'eo;::extracted_on
		return
-- commands
	:O:sf;::select * from 
		return

:O:dd;:: dashboard


;-------------------- arrow keys
CapsLock::
return

Tab::Tab
return

capslock & Space::
	Send _
return

capslock & j:: 
	Send {Left}
return
capslock & l:: 
	Send {Right}
return
capslock & k:: 
	Send {Down}
return
capslock & i::
	Send {Up}
return 
capslock & h:: 
	Send ^{Left}
return
capslock & /;:: 
	Send ^{Right}
return

capslock & u:: 
	Send {Home}
return
capslock & o:: 
	Send {End}
return

			
capslock & Y:: 
	Send ^{Home}
return
capslock & P:: 
	Send ^{End}
return

capslock & n:: 
	Send {Down}{Home}
return
capslock & m:: 
	Send {Down}{End}
return
capslock & ,:: 
	Send {End}{Enter},
return
capslock & .:: 
	Send {Down}{Home},
return
capslock & c:: 
	Send {End}+{Home}^c{End}{Enter}^v
return

capslock & w:: 
	Send ^c
return
capslock & s:: 
	Send ^v
return

Tab & j:: 
	Send +{Left}
return
Tab & l:: 
	Send +{Right}
return
Tab & k:: 
	Send +{Down}
return
Tab & i::
	Send +{Up}
return 

;---- select words
Tab & h::
	Send ^+{Left}
return 
Tab & /;:: 
	Send ^+{Right}
return

Tab & u:: 
	Send +{Home}
return
Tab & o:: 
	Send +{End}
return
;-- whole line:
Tab & m:: 
	Send {End}+{Home}
return


Tab & y:: 
	Send ^+{Home}
return
Tab & p:: 
	Send ^+{End}
return


Capslock & e::
	MouseClick,WheelUp,,,1,0,D,R		
return
Capslock & d::
	MouseClick,WheelDown,,,1,0,D,R
return

Capslock & f::
	MouseClick, left
return
;------------ Numbers
RWin & w::
	Send 1
return
RWin & e::
	Send 2
return
RWin & r::
	Send 3
return
RWin & s::
	Send 4
return
RWin & d::
	Send 5
return
RWin & f::
	Send 6
return
RWin & x::
	Send 7
return
RWin & c::
	Send 8
return
RWin & v::
	Send 9
return
RWin & a::
	Send 0
return

-- ------------------------------ actions
Capslock & q::
	Send {BS}
return	
Capslock & a::
	Send {Del}
return
;-------------------- okno zawsze na górze
^`::  Winset, Alwaysontop, , A

;-------------------- Common phrases:

!`::
	Send excel vba
return

;-------------------- Current date 1:

!F1::
	FormatTime, CurrentDateTime,, yyMMdd
	SendInput %CurrentDateTime%	

return

;-------------------- Current date 2:

!F2::
	FormatTime, CurrentDateTime,, yyyy-MM-dd
	SendInput %CurrentDateTime%	

return

;-------------------- Current date 2:

!F3::
	FormatTime, CurrentDateTime,, hh:mm
	SendInput %CurrentDateTime%	

return

; ------------------------------------------------------------------
; 				FOLDER ACTIONS
; ------------------------------------------------------------------


;---------- Close (Alt+F4)
` & Esc::
	Send !{F4}
return


;---------- Close (Alt+F4)
;` & 1::
;	Send ^o
;return	 


;---------- Internet options - uncheck proxy
` & F2::
	run C:\Users\Przemek Latka\Desktop\Internet Options - Shortcut
	sleep, 2000
	Send ^{tab}^{tab}^{tab}^{tab}
	sleep, 1000 
	Send {tab 6}
	sleep, 1000 
	Send {Enter}
	sleep, 2000
	Send {tab}{space}{enter}
	;sleep, 1000
	;Send {tab 3}{enter}{tab}{enter}				
return


; ------------------------------------------------------------------
; 				OUTLOOK
; ------------------------------------------------------------------
; Bullet
#IfWinActive, ahk_class rctrl_renwnd32
AppsKEy & b::
	Send !hu{Home}{Right}{Enter}
return

; Bullet In
#IfWinActive, ahk_class rctrl_renwnd32
!Right::
	Send !hai
return

; Bullet out
#IfWinActive, ahk_class rctrl_renwnd32
!Left::
	Send !hao
return


	
	
+Esc:: ExitApp	