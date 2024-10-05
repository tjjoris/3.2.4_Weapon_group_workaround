#Requires AutoHotkey v2.0

_scriptActive := false ;
_fire1Input := "{LButton}" ;
_weaponGroup2 := "{0}" ;
_fireAllWeapons := "{LButton}" ;
_testButton := "{b}" ;

^.::{
	_scriptActive := "" ;
	_scriptActive := true ;
	Send "{c}" ;
	_testButton := "" ;
	global _testButton := "{a}" ;
	Send _testButton ;
} ;
^,::_scriptActive := false ;

LButton::{
	if (_scriptActive = true) {
		Send _weaponGroup2 ;
		Send "{LButton}" ;
	}
	else {
	Send _fireAllWeapons ;
	Send _testButton ;
	}
} ;