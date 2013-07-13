_iteration = 0;
S_ts_serverTime = daytime;
publicVariable  "S_ts_serverTime";
while{true} do {
	skipTime S_ts_acceleration;
	S_ts_serverTime = daytime;
	
	sleep S_ts_frequency;
	
	_iteration = _iteration + 1;
	if(_iteration == S_ts_synchroFrequency) then {
		publicVariable  "S_ts_serverTime";
		_iteration = 0;
		};
};