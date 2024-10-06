#Requires AutoHotkey v2.0

_toggleScriptOn := "^." ;
_toggleScriptOff := "^," ;
_scriptActive := false ;
_fire1Input := "3" ;
_outputGroup1 := "2" ;
_outputGroup2 := "3" ;
_outputGroupAll := "4" ;
_outputFireAllWeapons := "1" ;
_joystick1 := "2" ;
_joystick2 := "5" ;
_joystickOutput := "1" ;
_isJoystick := true ;


; _toggleScriptOn ToggleScript(true)
; _toggleScriptOn::{						;toggle the script on.
Hotkey _toggleScriptOn , ToggleScript	;toggle the script on.
try
	Hotkey "^."
catch TargetError
	MsgBox "The hotkey does not exist"

ToggleScript(ThisHotKey) {
	; global _scriptActive := toggle ;
	MsgBox "Hello World"
} ;
; ^,::{						;toggle the script off.
; 	global _scriptActive := false ;
; }

; LButton::{
; 	if (_scriptActive = true) {
; 		Send _weaponGroup2 ;
; 		Send "{LButton}" ;
; 	}
; 	else {
; 	Send _fireAllWeapons ;
; 	Send _testButton ;
; 	}
; } ;