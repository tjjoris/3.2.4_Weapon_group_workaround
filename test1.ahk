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
make_hotkey() 

; _toggleScriptOn ToggleScript(true)
; _toggleScriptOn::{						;toggle the script on.
; Hotkey _toggleScriptOn , ToggleScript.Call(A_ThisHotkey, true)	;toggle the script on.
make_hotkey() {
var1 := "hi"
_boundFunc := FunctionABC.Bind(var1)
Hotkey _toggleScriptOff, _boundFunc
}
; try
; 	Hotkey _toggleScriptOn
; catch TargetError
; 	MsgBox "The hotkey does not exist"

ToggleScript(msg) {
	; global _scriptActive := toggle ;
	MsgBox msg
} ;
FunctionABC(ThisHotKey, msg) {
	MsgBox msg " " ThisHotKey
}
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