_soldier = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_soldier removeAction AA_S_is_leaderQuestion;
_soldier removeAction AA_S_is_pushSoldier;
_soldier removeAction AA_S_is_cancel;
_soldier removeAction AA_S_is_Interaction;

_solX = getpos _soldier select 0;
_solY = getpos _soldier select 1;

_callX = getpos _caller select 0;
_callY = getpos _caller select 1;

_distX = _callX - _solX;
_distY = _callY - _solY;

_length = sqrt( (_distX * _distX) + (_distY * _distY));

_normX = _distX / _length;
_normY = _distY / _length;

_distX =_distX + (_normX * S_is_pushDistance);
_distY =_distY + (_normY * S_is_pushDistance);
_soldier setPos[_callX - _distX, _callY - _distY, getpos _soldier select 2 + 0.2];



AA_S_is_Interaction = _soldier addAction [STR_s_is_interaction,S_is_directory + "functions\interaction.sqf", "", 0, false, true]; 