#include "scripts\equipmentSelect\guerOrbat.sqf";
#include "scripts\equipmentSelect\civOrbat.sqf";
#include "scripts\equipmentSelect\westOrbat.sqf";
#include "scripts\equipmentSelect\eastOrbat.sqf";
#include "scripts\equipmentSelect\classLookup.sqf";

//-----Settings ------

missionNamespace setVariable ["allowedHelmetsWest",["CUP_H_CDF_H_PASGT_UN"]];
missionNamespace setVariable ["allowedUniformsWest",["U_C_Man_casual_2_F","U_C_Man_casual_1_F","CUP_U_O_CHDKZ_Lopotev","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_Rangemaster","U_C_Man_casual_4_F"]];
missionNamespace setVariable ["allowedHelmetsEast",["CUP_H_RUS_6B27"]];
missionNamespace setVariable ["allowedUniformsEast",["U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","CUP_B_USMC_Navy_Red","U_C_Man_casual_6_F"]];


//-----End Settings ------





// Plank Config
call compile preprocessFileLineNumbers "plank\plank_init.sqf";
{
	
[_x, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]] call 
plank_api_fnc_forceAddFortifications;

} forEach allPlayers;



ManHours = 120, publicVariable "ManHours";

call compile preprocessFileLineNumbers "plank\plank_init.sqf";


//Add Med Action

private _fnc_addMedLootAction = {
    params ["_unit"];
    if (!local _unit) exitWith {};

    _unit setVariable ["commy_isLooted", false, true];

    [_unit, [
        "Take Medical Supplies",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _target setVariable ["commy_isLooted", true, true];
            _this execVM "scripts\loot\lootMedical.sqf";
        },
        nil,
        1.5,
        false,
        true,
        "",
        "!alive _target && {!(_target getVariable ['commy_isLooted', false])}",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
};

["CAManBase", "InitPost", _fnc_addMedLootAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Respawn", _fnc_addMedLootAction] call CBA_fnc_addClassEventHandler;




//Soldier Loadout Overwrite

_fnc_ititializeSoldier = {

    params ["_unit"];
    _rawClass = typeOf _unit;
    _side = side _unit;
    _sideString = str _side;
    _local =  local _unit ;
   _class = [_rawClass,_sideString] call fnc_classLookup;

	//diag_log format ["Initializing Soldier %1 with class %2 on side %3, Local?: %4", _unit, _class, _sideString, _local];

		switch (_sideString) do {
		    case "EAST": { 
		   		[_unit,_class] remoteExec ["fnc_InitEast",_unit];
		    };
		    case "WEST": {
		   		[_unit,_class] remoteExec ["fnc_InitWest",_unit];
		    };
		    case "GUER": {
		   		[_unit,_class] remoteExec ["fnc_InitGuer",_unit];
		    };
		    case "CIV": {  
		   		[_unit,_class] remoteExec ["fnc_IniCiv",_unit];
		    };
		    default {};
		};

	    unitClass =_unit getVariable ['class', 'rifle'];

    [_unit, [
        format ["Switch to %1", _class],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];

            _targetClass = _target getVariable ['class','rifle'];
            _callerClass = _caller getVariable ['class','rifle'];
            [_caller,_targetClass] remoteExec ["fnc_SetWeaponWest",_caller];
            _target setVariable ["commy_isLooted", true, true];
            _caller setVariable ["class",_targetClass, true];
            _target setVariable ["class","empty", true];
            diag_log format ["Class Switch %1 to %2", _callerClass, _targetClass];
        },
        nil,
        1.5,
        false,
        true,
        "",
        "!alive _target && {(_target getVariable ['class', 'empty'])!='empty'} && {(_target getVariable ['class','rifle'])!=(_this getVariable ['class','rifle'])} ",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
}; 

["CAManBase", "InitPost", _fnc_ititializeSoldier, nil, nil, true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Respawn", _fnc_ititializeSoldier] call CBA_fnc_addClassEventHandler;

//Add Recruit Action


fnc_addRecruitAction = {
    params ["_unit"];
    if (!local _unit) exitWith {};

    _unit setVariable ["isRecruited", false, true];

    [_unit, [
        "Recruit",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _target setVariable ["isRecruited", true, true];
            _this execVM "scripts\recruit\recruitRifleman.sqf";
        },
        nil,
        1.5,
        false,
        true,
        "",
        "alive _target && {!(_target getVariable ['isRecruited', false])}",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
};

fnc_make_classbox = {
    params ["_unit"];
    if (!local _unit) exitWith {};



    [_unit, [
        "Useless action",
        {}
    ]] remoteExec ["addAction"];
};


//["B_Survivor_F", "InitPost", _fnc_addRecruitAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
//["B_Survivor_F", "Respawn", _fnc_addRecruitAction] call CBA_fnc_addClassEventHandler;

