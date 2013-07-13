_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction _actionId;

AA_S_is_cancel = _soldier addAction [STR_S_is_cancel,S_is_directory + "functions\cancel.sqf", "", 6, false, true]; 
if( S_is_leaderInfo ) then { 
AA_S_is_leaderQuestion = _soldier addAction [STR_S_is_leaderQuestion,S_is_directory + "functions\leaderQuestion.sqf", "", 5, false, true]
}; 
if( S_is_pushing ) then {
AA_S_is_pushSoldier = _soldier addAction [STR_S_is_pushSoldier,S_is_directory + "functions\push.sqf", "", 5, false, true, "", "vehicle _target == _target"]; 
}
