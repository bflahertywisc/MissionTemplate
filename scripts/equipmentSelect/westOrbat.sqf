 _fnc_InitWest = {
 sleep 2;
//---Settings----
//Helmets
_allowedHelmets=["CUP_H_CDF_H_PASGT_UN","CUP_H_CDF_OfficerCap_UN"];

//---End Settings---


params ["_unit","_class"];

// Set Helmet 
	removeHeadgear _unit;
	_helmet = selectRandom _allowedHelmets;
	diag_log format ["Solder %1 is getting helmet %2 on side %3", _unit, _helmet];
	_unit addHeadgear _helmet;

};