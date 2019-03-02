fnc_addClassOptions ={
	params ["_unit","_endless","_newContents"];
    if (!local _unit) exitWith {};

    {
	    [_unit, [
        format ["Switch to %1",_x],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _targetClass = _arguments select 0;
            _endless = _arguments select 1;
            _side = side _caller;
            [_caller,_targetClass,_side,false] remoteExec ["fnc_InitEquip",_caller];;
            _caller setVariable ["class",_targetClass, true];
            if (!_endless) then {
          		[_target, _actionID] remoteExec ["removeAction"];
          		};
        },
        [_x,_endless],
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
    } forEach _newContents;


   contents = _unit getVariable ["contents",[]];
   _newContents = contents + _newContents;
   _unit setVariable ["contents", _newContents];

	_unit setVariable ["endless", _endless];
};

fnc_addAddonOptions = {
	params ["_unit","_endless","_newContents"];
    if (!local _unit) exitWith {};

    {
	    [_unit, [
        format ["Equip %1",_x],
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _addonToAdd = _arguments select 0;
            _endless = _arguments select 1;
            [_caller,_addonToAdd] remoteExec ["fnc_AddAddon",_caller];;
            if (!_endless) then {
          		[_target, _actionID] remoteExec ["removeAction"];
          		};
        },
        [_x,_endless],
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
    } forEach _newContents;


   contents = _unit getVariable ["contents",[]];
   _newContents = contents + _newContents;
   _unit setVariable ["contents", _newContents];

	_unit setVariable ["endless", _endless];
};

