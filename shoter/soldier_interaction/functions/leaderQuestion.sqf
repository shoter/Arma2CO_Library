_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction AA_S_si_leaderQuestion;
_soldier removeAction AA_S_si_pushSoldier;
_soldier removeAction AA_S_si_cancel;
_soldier removeAction AA_S_si_Interaction;

_leader = leader _soldier;

if( _leader == _soldier ) then {
hint format[STR_S_si_imLeader];
} else{ 
	if(_leader == _caller) then {
		hint format[STR_S_si_youAreLeader];
	} else {
	hint format[STR_S_si_myLeaderIs, name _leader];
	};
};

AA_S_si_Interaction = _soldier addAction [STR_s_si_interaction,S_si_directory + "functions\interaction.sqf", "", 0, false, true]; 