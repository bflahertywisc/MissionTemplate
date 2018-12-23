// Plank Config
call compile preprocessFileLineNumbers "plank\plank_init.sqf";
{
	
[_x, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]] call 
plank_api_fnc_forceAddFortifications;

} forEach allPlayers;



ManHours = 120, publicVariable "ManHours";

call compile preprocessFileLineNumbers "plank\plank_init.sqf";


//Add Loot Action

private _fnc_addLootAction = {
    params ["_unit"];

	diag_log format ["Initializing Soldier: %1.", _unit];
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

["CAManBase", "InitPost", _fnc_addLootAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Respawn", _fnc_addLootAction] call CBA_fnc_addClassEventHandler;


//Add Recruit Action


private _fnc_addRecruitAction = {
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


["B_Survivor_F", "InitPost", _fnc_addRecruitAction, nil, nil, true] call CBA_fnc_addClassEventHandler;
["B_Survivor_F", "Respawn", _fnc_addRecruitAction] call CBA_fnc_addClassEventHandler;

