fnc_InitEast = {

params ["_unit","_class"];


removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


// Set Outfit 
_helmetList  = missionNamespace getVariable "allowedHelmetsEast";
_helmet = selectRandom _helmetList;
_unit addHeadgear _helmet;
_uniformList  = missionNamespace getVariable "allowedUniformsEast";
_uniform = selectRandom _uniformList;
_unit forceAddUniform _uniform;

};