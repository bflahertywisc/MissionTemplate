_box = _this select 0;
_contents = _box getVariable ["contents",[]];

{
_addedClass = _x;
    [_box, [
        format["Select Class: %1",_addedClass],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            
            [_caller,_arguments] execVM "scripts\equipmentSelect\giveEquipment.sqf"
        },
        [_addedClass],
        1.5,
        false,
        true,
        "",
        "true",
        50,
        false,
        "",
        ""
    ]] remoteExec ["addAction"];

} forEach _contents;