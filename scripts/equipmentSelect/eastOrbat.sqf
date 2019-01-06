fnc_InitEast = {

params ["_unit","_class"];

_unit setVariable ["class", _class, true];


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


    case "ftl": {
    
		for "_i" from 1 to 20 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "Chemlight_blue";
		_unit addItemToUniform "Laserbatteries";
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 10 do {_unit addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
		for "_i" from 1 to 15 do {_unit addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
		_unit addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "SmokeShell";};
		_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_1Rnd_StarFlare_White_M203";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

		_unit addWeapon "CUP_arifle_M16A4_GL";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight";
		_unit addWeapon "Laserdesignator";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";

	};

    case "at": {


		comment "Add containers";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "Chemlight_blue";
		_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		_unit addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
		_unit addItemToBackpack "CUP_OG7_M";
		_unit addItemToBackpack "CUP_PG7V_M";


		_unit addWeapon "CUP_arifle_M16A4_Base";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight";


		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "tf_anprc152_3";
	};


	    case "marksman":{

		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 3 do {_unit addItemToUniform "CUP_17Rnd_9x19_glock17";};
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
		for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 3 do {_unit addItemToVest "CUP_20Rnd_762x51_DMR";};
		for "_i" from 1 to 3 do {_unit addItemToVest "20Rnd_762x51_Mag";};
		_unit addBackpack "B_AssaultPack_blk";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer";};
		for "_i" from 1 to 7 do {_unit addItemToBackpack "CUP_17Rnd_9x19_glock17";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};

		_unit addWeapon "CUP_srifle_M14";
		_unit addPrimaryWeaponItem "ACE_optic_Arco_2D";
		_unit addWeapon "CUP_hgun_Glock17";
		_unit addHandgunItem "CUP_acc_Glock17_Flashlight";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "tf_anprc152_2";

    };


        case "medic":{


		_unit addItemToUniform "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
		_unit addVest "V_PlateCarrier2_blk";
		for "_i" from 1 to 5 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
		_unit addItemToVest "SmokeShellRed";
		_unit addItemToVest "SmokeShellGreen";
		for "_i" from 1 to 12 do {_unit addItemToVest "SmokeShell";};
		_unit addBackpack "CUP_B_AlicePack_Khaki";
		for "_i" from 1 to 100 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_morphine";};


		_unit addWeapon "CUP_arifle_M16A4_Base";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight";



		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";

    };

    default {};
};

};