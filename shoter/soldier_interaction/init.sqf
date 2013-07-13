call compile preprocessFile "arma2_co_library\shoter\soldier_interaction\settings.sqf";
_languageFile = ("strings_" + S_si_language + ".sqf");
call compile preprocessFile (S_si_directory + _languageFile);