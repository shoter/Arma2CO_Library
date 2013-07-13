Script name : Time speeder
Author : Shoter
Overview : Speeds the time on the server and clients. It also try to synchronize time beetween client and server without big time breaks.


GLOBAL : YES
LOCAL  : NO
INIT   : NESSESARY
Config : Configurable

Languages :
None

How to use :

1. in missions init.sqf file insert this :
call compile preprocessFile "arma2_co_library\shoter\time_speeder\init.sqf";
2. Change shoter\time_speeder\settings.sqf to your needs