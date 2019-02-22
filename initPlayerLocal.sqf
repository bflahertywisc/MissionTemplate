 params ["_player", "_didJip"];

[] execVM "QS_icons.sqf";

_player addAction [
    "Press Down Grass", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _pos = getPosATL _caller;
		_azimuth = getDir _caller;
		_far = 2; //Distance from the player to the _object

		_x = (_pos select 0) + (_far * (sin _azimuth));
		_y = (_pos select 1) + (_far * (cos _azimuth));

		_obj = createVehicle ["ClutterCutter_small_EP1", [_x, _y, (_pos select 2)], [], 0, 'CAN_COLLIDE'];
    },
    [],
    1.5, 
    true, 
    true, 
    "",
    "(stance _this == 'PRONE')", // _target, _this, _originalTarget
    50,
    false,
    "",
    ""
];