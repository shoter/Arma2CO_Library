GLOBAL : NO

Languages :
English - en
Polish - pl

How to use :

1. in missions init.sqf file insert this :
call compile preprocessFile "arma2_co_library\shoter\soldier_interaction\init.sqf";
2. In soldier initialization field :
nic = [this] execvm "arma2_co_library\shoter\soldier_interaction\soldier_init.sqf";
3. Change shoter\soldier_interaction\settings.sqf to your needs.