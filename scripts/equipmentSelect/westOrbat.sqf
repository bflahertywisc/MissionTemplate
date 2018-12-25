fnc_InitWest = {
//---Settings----

//Outfit


//


//---End Settings---
params ["_unit","_class"];

// Set Outfit 
removeHeadgear _unit;
_helmetList  = missionNamespace getVariable "allowedHelmetsWest";
_helmet = selectRandom _helmetList;
_unit addHeadgear _helmet;

removeUniform _unit;
_uniformList  = missionNamespace getVariable "allowedUniformsWest";
_uniform = selectRandom _uniformList;
_unit forceAddUniform _uniform;

};