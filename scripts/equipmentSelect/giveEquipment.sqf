params ["_equipee", "_classArray"];
if (!local _equipee) exitWith {};
_class = _classArray select 0;
_equipee setVariable ["Class", _class, true];
_uniform = floor random 5;
hint format ["Uniform: %1",_uniform];
switch (_uniform) do {
	case 0: {
		_equipee forceAddUniform "U_C_Man_casual_2_F";
	};
	case 1: {
		_equipee forceAddUniform "U_C_Man_casual_1_F";
	};
	case 2: {
		_equipee forceAddUniform "U_C_Poloshirt_blue";
	};

	case 3: {
		_equipee forceAddUniform "U_C_Poloshirt_tricolour";
	};

	case 4: {
		_equipee forceAddUniform "U_C_Man_casual_4_F";
	};
	default {
		_equipee forceAddUniform "CUP_U_C_Priest_01"
	};

};

switch (_class) do {
    case "Rifleman": {
    	removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "ACE_fieldDressing";};
		_equipee addItemToUniform "ACE_morphine";
		_equipee addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "CUP_30Rnd_556x45_Stanag";};
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_equipee addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_equipee addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_equipee addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 7 do {_equipee addItemToVest "CUP_30Rnd_556x45_Stanag";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_HandGrenade_M67";};
		_equipee addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 5 do {_equipee addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_arifle_M16A4_Base";
		_equipee addPrimaryWeaponItem "CUP_acc_Flashlight";

		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "ItemRadio";
	};
    case "Automatic Rifleman": {
		comment "Exported from Arsenal by Bryan";

		comment "Remove existing items";
		removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "ACE_fieldDressing";};
		_equipee addItemToUniform "ACE_morphine";
		_equipee addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_equipee addItemToUniform "CUP_17Rnd_9x19_glock17";};
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_equipee addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_equipee addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_equipee addItemToVest "ACE_fieldDressing";};
		_equipee addItemToVest "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_17Rnd_9x19_glock17";};
		_equipee addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 2 do {_equipee addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";};
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_lmg_m249_pip4";
		_equipee addPrimaryWeaponItem "CUP_acc_Flashlight";
		_equipee addWeapon "CUP_hgun_Glock17";

		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "ItemRadio";
    };

    case "Fire Team Leader":{
		comment "Exported from Arsenal by Bryan";

		comment "Remove existing items";
		removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		for "_i" from 1 to 20 do {_equipee addItemToUniform "ACE_fieldDressing";};
		_equipee addItemToUniform "ACE_morphine";
		_equipee addItemToUniform "Chemlight_blue";
		_equipee addItemToUniform "Laserbatteries";
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 10 do {_equipee addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_equipee addItemToVest "ACE_morphine";};
		for "_i" from 1 to 15 do {_equipee addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 7 do {_equipee addItemToVest "CUP_30Rnd_556x45_Stanag";};
		_equipee addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 12 do {_equipee addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 5 do {_equipee addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {_equipee addItemToBackpack "SmokeShell";};
		_equipee addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
		for "_i" from 1 to 2 do {_equipee addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 5 do {_equipee addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 3 do {_equipee addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 4 do {_equipee addItemToBackpack "CUP_1Rnd_StarFlare_White_M203";};
		for "_i" from 1 to 10 do {_equipee addItemToBackpack "1Rnd_HE_Grenade_shell";};
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_arifle_M16A4_GL";
		_equipee addPrimaryWeaponItem "CUP_acc_Flashlight";
		_equipee addWeapon "Laserdesignator";

		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "ItemRadio";
    };

    case "Medic":{
		comment "Exported from Arsenal by Bryan";

		comment "Remove existing items";
		removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		_equipee addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "CUP_30Rnd_556x45_Stanag";};
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 5 do {_equipee addItemToVest "CUP_30Rnd_556x45_Stanag";};
		_equipee addItemToVest "SmokeShellRed";
		_equipee addItemToVest "SmokeShellGreen";
		for "_i" from 1 to 12 do {_equipee addItemToVest "SmokeShell";};
		_equipee addBackpack "CUP_B_AlicePack_Khaki";
		for "_i" from 1 to 100 do {_equipee addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_equipee addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 20 do {_equipee addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 40 do {_equipee addItemToBackpack "ACE_morphine";};
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_arifle_M16A4_Base";
		_equipee addPrimaryWeaponItem "CUP_acc_Flashlight";


		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "ItemRadio";

    };

    case "Marksman":{

		comment "Exported from Arsenal by Bryan";

		comment "Remove existing items";
		removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "ACE_fieldDressing";};
		_equipee addItemToUniform "ACE_morphine";
		_equipee addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_equipee addItemToUniform "CUP_17Rnd_9x19_glock17";};
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_equipee addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_equipee addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_equipee addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_20Rnd_762x51_DMR";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "20Rnd_762x51_Mag";};
		_equipee addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 2 do {_equipee addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer";};
		for "_i" from 1 to 7 do {_equipee addItemToBackpack "CUP_17Rnd_9x19_glock17";};
		for "_i" from 1 to 2 do {_equipee addItemToBackpack "20Rnd_762x51_Mag";};
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_srifle_M14";
		_equipee addPrimaryWeaponItem "ACE_optic_Arco_2D";
		_equipee addWeapon "CUP_hgun_Glock17";
		_equipee addHandgunItem "CUP_acc_Glock17_Flashlight";

		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "tf_anprc152_2";

    };

    case "Rifleman(AT)":{
		comment "Exported from Arsenal by Bryan";

		comment "Remove existing items";
		removeAllWeapons _equipee;
		removeAllItems _equipee;
		removeAllAssignedItems _equipee;
		removeVest _equipee;
		removeBackpack _equipee;
		removeHeadgear _equipee;
		removeGoggles _equipee;

		comment "Add containers";
		for "_i" from 1 to 2 do {_equipee addItemToUniform "ACE_fieldDressing";};
		_equipee addItemToUniform "ACE_morphine";
		_equipee addItemToUniform "Chemlight_blue";
		_equipee addItemToUniform "CUP_30Rnd_556x45_Stanag";
		_equipee addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_equipee addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_equipee addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_equipee addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 7 do {_equipee addItemToVest "CUP_30Rnd_556x45_Stanag";};
		for "_i" from 1 to 3 do {_equipee addItemToVest "CUP_HandGrenade_M67";};
		_equipee addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 5 do {_equipee addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
		_equipee addItemToBackpack "CUP_OG7_M";
		_equipee addItemToBackpack "CUP_PG7V_M";
		_equipee addHeadgear "CUP_H_CDF_H_PASGT_UN";

		comment "Add weapons";
		_equipee addWeapon "CUP_arifle_M16A4_Base";
		_equipee addPrimaryWeaponItem "CUP_acc_Flashlight";

		comment "Add items";
		_equipee linkItem "ItemMap";
		_equipee linkItem "ItemCompass";
		_equipee linkItem "ItemWatch";
		_equipee linkItem "tf_anprc152_3";


    
    };
    default { hint format ["Unknown Class: %1",_class] };
};



