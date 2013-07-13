call compile preprocessFile "arma2_co_library\shoter\soldier_interaction\settings.sqf";
_languageFile = ("strings_" + S_is_language + ".sqf");
call compile preprocessFile (S_is_directory + _languageFile);