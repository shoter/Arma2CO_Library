_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction _actionId;

AA_S_si_cancel = _soldier addAction [STR_S_si_cancel,S_si_directory + "functions\cancel.sqf", "", 6, false, true, "", "vehicle _this == _this"]; 
if( S_si_leaderInfo ) then { 
AA_S_si_leaderQuestion = _soldier addAction [STR_S_si_leaderQuestion,S_si_directory + "functions\leaderQuestion.sqf", "", 5, false, true, "", "vehicle _this == _this"]
}; 
if( S_si_pushing ) then {
AA_S_si_pushSoldier = _soldier addAction [STR_S_si_pushSoldier,S_si_directory + "functions\push.sqf", "", 5, false, true, "", "vehicle _target == _target AND vehicle _this == _this"]; 
}
