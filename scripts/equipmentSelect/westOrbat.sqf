fnc_InitWest = {
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
_helmetList  = missionNamespace getVariable "allowedHelmetsWest";
_helmet = selectRandom _helmetList;
_unit addHeadgear _helmet;
_uniformList  = missionNamespace getVariable "allowedUniformsWest";
_uniform = selectRandom _uniformList;
_unit forceAddUniform _uniform;




switch (_class) do {
    case "rifle": {

    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		_unit addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
		_unit addHeadgear "CUP_H_CDF_H_PASGT_UN";


		_unit addWeapon "CUP_arifle_M16A4_Base";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";

    };

    case "survivor": {

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";

		[_unit] remoteExec ["fnc_addRecruitAction"];

    };

    case "ar": {
		comment "Add containers";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_unit addItemToUniform "CUP_17Rnd_9x19_glock17";};
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
		_unit addItemToVest "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_17Rnd_9x19_glock17";};
		_unit addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";};
		_unit addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_unit addWeapon "CUP_lmg_m249_pip4";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight";
		_unit addWeapon "CUP_hgun_Glock17";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
	};
    default {};
};


};