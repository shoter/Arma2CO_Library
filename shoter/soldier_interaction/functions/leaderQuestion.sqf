_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction AA_S_is_leaderQuestion;
_soldier removeAction AA_S_is_pushSoldier;
_soldier removeAction AA_S_is_cancel;
_soldier removeAction AA_S_is_Interaction;

_leader = leader _soldier;

if( _leader == _soldier ) then {
hint format[STR_S_is_imLeader];
} else{ 
	if(_leader == _caller) then {
		hint format[STR_S_is_youAreLeader];
	} else {
	hint format[STR_S_is_myLeaderIs, name _leader];
	};
};

AA_S_is_Interaction = _soldier addAction [STR_s_is_interaction,S_is_directory + "functions\interaction.sqf", "", 0, false, true]; 