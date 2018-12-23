_fnc_InitWest = {
	params ["_unit", "_class"];
	switch (_class) do {	
		case "CUP_I_TK_GUE_Soldier"	:
		{ 
	
		};	
		default {

		comment "Remove existing items";
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;

		comment "Add containers";
		_unit forceAddUniform "U_C_Protagonist_VR";
		_unit addItemToUniform "FirstAidKit";
		_unit addItemToUniform "SmokeShell";
		_unit addItemToUniform "HandGrenade";
		_unit addItemToUniform "SmokeShellGreen";
		_unit addItemToUniform "Chemlight_green";
		_unit addVest "V_PlateCarrier2_rgr";
		for "_i" from 1 to 5 do {_unit addItemToVest "100Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
		_unit addItemToVest "Chemlight_green";
		_unit addBackpack "B_AssaultPack_blk";
		_unit addHeadgear "H_HelmetB_grass";
		_unit addGoggles "G_Aviator";

		comment "Add weapons";
		_unit addWeapon "arifle_MX_SW_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "bipod_01_F_snd";
		_unit addWeapon "hgun_P07_F";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "NVGoggles";

		comment "Set identity";
		_unit setFace "WhiteHead_11";
		_unit setSpeaker "male08eng";


		};
};