sleep 3;
_divider = 3600.0 / S_ts_frequency;

S_ts_earlyAcceleration = S_ts_earlyAcceleration / _divider;
S_ts_lateAcceleration = S_ts_lateAcceleration / _divider;
S_ts_late = S_ts_late / 3600.0;
_oldTime = S_ts_serverTime;
_currentAcc = S_ts_acceleration;

_acceleration = "normal";
_maxDiff = -1000;
_minDiff = 1000;

_iteration = 85;
_currentDiffrence = 0;
_diffrence = 0;
while{true} do {
	skipTime _currentAcc;
	//get Server time;
	_serverTime = S_ts_serverTime;
	_clientTime = daytime;
	if(_serverTime != _oldTime) then {
	_diffrence = _clientTime - _serverTime;
	
	if( _diffrence > S_ts_late ) then { //client is faster than server 
	_currentAcc = S_ts_earlyAcceleration;
	} else {
		if(_diffrence < (-S_ts_late)) then { //client is slower than server
		_currentAcc = S_ts_lateAcceleration;
		} else { //client have nearly same time as server
		_currentAcc = S_ts_acceleration;
		};
	
	};
	
	//FOR DEBUG.
	if( _diffrence > _maxDiff ) then
	{
	_maxDiff = _diffrence;
	};
	if( _diffrence < _minDiff ) then
	{
	_minDiff = _diffrence;
	};
	
	_currentDiffrence = _diffrence;
	_iteration = _iteration + 1;
	_oldTime = S_ts_serverTime;
	};
	
	if(S_ts_debug) then {
	//change diffrence to seconds
	_diffSec = _currentDiffrence * 3600;
	_minDiffSec = _minDiff * 3600;
	_maxDiffSec = _maxDiff * 3600;
	_accSec = _currentAcc * 3600;
	_normalAcc = S_ts_acceleration * 3600;
	hint format["Debug message\n_serverTime = %1\n_myTime=%2\n_diffrence=%3\n_maxDiff=%5\n_minDiff=%6\nAcceleration=%4\nNormalAcc=%8\niteration=%7", _serverTime, _clientTime, _diffSec, _accSec, _maxDiffSec, _minDiffSec, _iteration, _normalAcc ];
	};
	
	sleep S_ts_frequency;
	
	
	if( _iteration == 100 ) then {
	_maxDiff = -1000.0;
	_minDiff = 1000.0;
	_iteration = 0;
	};
};