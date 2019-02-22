
#include "scripts\equipmentSelect\classLookup.sqf";
#include "scripts\equipmentSelect\initializeUnit.sqf";
#include "scripts\equipmentSelect\giveEquipment.sqf";


//-----End Settings ------


//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands


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
             _targetClass = _target getVariable ['class','rifle'];
            [_caller,_targetClass] remoteExec ["fnc_AddMedical",_caller];
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
            [_caller,_targetClass] remoteExec ["fnc_AddAmmo",_caller];
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
            _side = side _target;
            [_caller,_targetClass,_side,false] remoteExec ["fnc_InitEquip",_caller];
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


fnc_addTakeAddonAction ={
    params ["_unit","_addon"];
    if (!local _unit) exitWith {};
    [_unit, [
        format ["Take %1", _addon],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _addon = _arguments select 0;
            [_caller,_addon] remoteExec ["fnc_AddAddon",_caller];
           
           [_target, _actionID] remoteExec ["removeAction"];
        },
        [_addon],
        1.5,
        false,
        true,
        "",
        "!alive _target",
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

	[_unit,_class,_side,true] remoteExec ["fnc_InitEquip",_unit];

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

