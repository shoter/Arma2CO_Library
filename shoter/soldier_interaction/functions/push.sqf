_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction AA_S_si_leaderQuestion;
_soldier removeAction AA_S_si_pushSoldier;
_soldier removeAction AA_S_si_cancel;
_soldier removeAction AA_S_si_Interaction;

if( !(isNull S_si_lastSoldier) ) then {
hint "not null";
S_si_lastSoldier removeAction AA_S_si_leaderQuestion;
S_si_lastSoldier removeAction AA_S_si_pushSoldier;
S_si_lastSoldier removeAction AA_S_si_cancel;
S_si_lastSoldier removeAction AA_S_si_Interaction;

if( S_si_lastSoldier != _soldier ) then {
	AA_S_si_Interaction = S_si_lastSoldier addAction [STR_s_si_interaction,S_si_directory + "functions\interaction.sqf", "", 0, false, true];
	};
};
S_si_lastSoldier = _soldier;

_solX = getpos _soldier select 0;
_solY = getpos _soldier select 1;

_callX = getpos _caller select 0;
_callY = getpos _caller select 1;

_distX = _callX - _solX;
_distY = _callY - _solY;

_length = sqrt( (_distX * _distX) + (_distY * _distY));

_normX = _distX / _length;
_normY = _distY / _length;

_distX =_distX + (_normX * S_si_pushDistance);
_distY =_distY + (_normY * S_si_pushDistance);
_soldier setPos[_callX - _distX, _callY - _distY, getpos _soldier select 2 + 0.2];



AA_S_si_Interaction = _soldier addAction [STR_s_si_interaction,S_si_directory + "functions\interaction.sqf", "", 0, false, true]; 