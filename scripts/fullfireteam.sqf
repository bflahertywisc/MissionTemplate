_box = _this select 0;

_box addAction["<t color='#00ff00'>FTL", {player execVM "Units\Blu\FTL.sqf";}];
_box addAction["<t color='#00ff00'>FireteamMedic", {player execVM "Units\Opf\at.sqf";}];
_box addAction["<t color='#00ff00'>Automatic Rifleman", {player execVM "Units\Opf\ftl.sqf";}];
_box addAction["<t color='#00ff00'>Marksman", {player execVM "Units\Opf\grenadier.sqf";}];
_box addAction["<t color='#00ff00'>Grenadier", {player execVM "Units\Opf\rifle.sqf";}];
_box addAction["<t color='#00ff00'>RiflemanAT", {player execVM "Units\Opf\officer.sqf";}];
_box addAction["<t color='#00ff00'>Anti-Armor", {player execVM "Units\Opf\mat.sqf";}];
_box addAction["<t color='#00ff00'>Ammoman", {player execVM "Units\Opf\sniper.sqf";}];