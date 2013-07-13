call compile preprocessFile "arma2_co_library\shoter\time_speeder\settings.sqf";

//change variables to seconds
_divider = 3600.0 / S_ts_frequency;

S_ts_acceleration = S_ts_acceleration / _divider;

if (isServer) then {
nic = [] execvm "arma2_co_library\shoter\time_speeder\functions\server.sqf";
} else {
nic = [] execvm "arma2_co_library\shoter\time_speeder\functions\client.sqf";
};