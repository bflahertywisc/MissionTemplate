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

    _unit setVariable ["medic_isLooted", false, true];

    [_unit, [
        "Take Medical Supplies",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _target setVariable ["medic_isLooted", true, true];
            _this execVM "scripts\loot\lootMedical.sqf";
        },
        nil,
        1.5,
        false,
        true,
        "",
        "!alive _target && {!(_target getVariable ['medic_isLooted', false])}",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
};

fnc_addResupplyAction ={
    params ["_unit"];
    if (!local _unit) exitWith {};
    _unit setVariable ["ammo_isLooted", false, true];
    [_unit, [
        format ["Resupply ammo"],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _targetClass = _target getVariable ['class','rifle'];
            _target setVariable ["ammo_isLooted", true, true];
            [_caller,_targetClass] remoteExec ["fnc_AddAmmoWest",_caller];
        },
        nil,
        1.5,
        false,
        true,
        "",
        "!alive _target && {(_target getVariable ['class','rifle'])==(_this getVariable ['class','rifle'])} && {!(_target getVariable ['ammo_isLooted', false])}",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
};

["CAManBase", "InitPost", _fnc_addMedLootAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Respawn", _fnc_addMedLootAction] call CBA_fnc_addClassEventHandler;

fnc_addClassSwitchAction ={
	params ["_unit","_class"];	

	if (!local _unit) exitWith {};

    [_unit, [
        format ["Switch to %1", _class],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];

            _targetClass = _target getVariable ['class','rifle'];
            _callerClass = _caller getVariable ['class','rifle'];
            [_caller,_targetClass] remoteExec ["fnc_SetWeaponWest",_caller];
            _target setVariable ["medic_isLooted", true, true];
            _caller setVariable ["class",_targetClass, true];
            _target setVariable ["class",_callerClass, true];
            _target removeAction _actionID;
            [_target,_callerClass]remoteExec ["fnc_addClassSwitchAction"];
        },
        nil,
        1.5,
        false,
        true,
        "",
        "!alive _target && {(_target getVariable ['class','rifle'])!=(_this getVariable ['class','rifle'])} ",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];
};


//Soldier Loadout Overwrite

_fnc_ititializeSoldier = {
    params ["_unit"];
    if (!local _unit) exitWith {};
    _rawClass = typeOf _unit;
    _side = side _unit;
    _sideString = str _side;
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

	[_unit,_class] remoteExec ["fnc_addClassSwitchAction",_unit];
	[_unit,_class] remoteExec ["fnc_addResupplyAction",_unit];

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

//["B_Survivor_F", "InitPost", _fnc_addRecruitAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
//["B_Survivor_F", "Respawn", _fnc_addRecruitAction] call CBA_fnc_addClassEventHandler;

