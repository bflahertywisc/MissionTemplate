fnc_InitWest = {
//---Settings----

//Outfit
_allowedHelmets=["CUP_H_CDF_H_PASGT_UN","CUP_H_CDF_OfficerCap_UN"];
_allowedUniforms=["U_C_Man_casual_2_F","U_C_Man_casual_1_F","CUP_U_O_CHDKZ_Lopotev","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_Rangemaster","U_C_Man_casual_4_F"];

//


//---End Settings---
params ["_unit","_class"];

// Set Outfit 
removeUniform _unit;
_uniform = selectRandom _allowedUniforms;
_unit forceAddUniform _uniform;

};