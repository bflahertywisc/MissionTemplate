fnc_AddAmmo = {
	params ["_unit","_class"];

if (!local _unit) exitWith {};

	switch (_class) do {

		case "ARMilitia";
		case "demoMan";
		case "uavOperator";
		case "engineer";
		case "FTLMilitia";
	    case "rifle": {
			_unit addItemToVest "CUP_HandGrenade_M67";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
	    };

	    case "survivor": {

	    };

	    case "ar": {

			_unit addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		};
		case "ATMilitia";
		case "medicMilitia";
		case "rifleMilitia":{
			for "_i" from 1 to 3 do {_unit addItemToBackpack "CUP_10x_303_M";};

		};

	    case "ftl": {
	    

			_unit addItemToVest "CUP_HandGrenade_M67";
			_unit addItemToBackpack "SmokeShell";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};

		};

	    case "at": {


			comment "Add containers";
			_unit addItemToVest "CUP_HandGrenade_M67";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
			_unit addItemToBackpack "CUP_PG7V_M";
		};


	    case "marksman":{

			for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_17Rnd_9x19_glock17";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};
	    };

	    case "MarksmanMilitia":{
	    	for "_i" from 1 to 3 do {_unit addItemToBackpack "CUP_5x_22_LR_17_HMR_M";};
	    };

        case "medic":{
			_unit addItemToVest "SmokeShell";
			_unit addItemToVest "CUP_HandGrenade_M67";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

	    };

	    case "sniperNight":{

			for "_i" from 1 to 2 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
			for "_i" from 1 to 3 do {_unit addItemToVest "7Rnd_408_Mag";};
	    };

	    case "reconRifleman":{

			_unit addItemToVest "CUP_HandGrenade_M67";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
	    };


	    default {};
	};



};

fnc_AddMedical = {
	params ["_unit","_class"];
	switch (_class) do {
		case "engineer";
		case "demoMan";
		case "uavOperator";
		case "marksmanMilitia";
		case "reconRifleman";
		case "sniperNight";
		case "marksman";
		case "at";
		case "ar";
		case "survivor";
		case "ATMilitia";
		case "ARMilitia";
		case "rifleMilitia";
	    case "rifle": {
			_unit addItemToBackpack "ACE_epinephrine";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_fieldDressing";};
	   	};
	   	case "FTLMilitia";
	    case "ftl": {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
	   	};
	   	case "MedicMilitia";
	   	case "medic":{
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bloodIV_500";};
	   	};
	    default {};
	};
};

fnc_AddAddon = {
	params ["_unit","_addon"];

	if(_addon != "empty") then {
	[_unit,_addon] remoteExec ["fnc_addTakeAddonAction",_unit];

	switch (_addon) do {

	//Optics
		case "Magnified Optics": {
			_unit addPrimaryWeaponItem "ACE_optic_Arco_PIP";
		};
		case "NV Magnified Optics": {
			_unit addPrimaryWeaponItem "ACE_optic_Hamr_2D";
		};
		case "Adv NV Magnified Optics": {
			_unit addPrimaryWeaponItem "optic_Nightstalker";
		};
		case "Optics": {
			_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		};
	//Launchers
		case "Light AT": {
			_unit addWeapon "CUP_launch_M136";
		};
		case "Stinger": {
			_unit addWeapon "CUP_launch_FIM92Stinger";
		};
		case "RPG": {
			_unit addWeapon "CUP_launch_RPG7V";
			_unit addItemToBackpack "CUP_PG7V_M";
		};
		case "Guided AT": {
			_unit addWeapon "launch_O_Titan_short_F";
			_unit addItemToBackpack "Titan_AP";
		};
	//Grenades
		case "Frag Grenades": {
			for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		};
		case "Frag Grenades(GP)": {
			for "_i" from 1 to 6 do {_unit addItemToBackpack "CUP_1Rnd_HE_M203";};
		};
		case "Smoke Grenades": {
			for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
		};
		case "Smoke Grenades(GP)": {
			for "_i" from 1 to 6 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
		};
		case "Hunt IR Kit": {
			_unit addItemToBackpack "ACE_HuntIR_monitor";
			for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_HuntIR_M203";};
		};
		case "Colored Smoke": {
			_unit addItemToBackpack "SmokeShellBlue";
			_unit addItemToBackpack "SmokeShellRed";
			_unit addItemToBackpack "SmokeShellGreen";
		};
		case "Colored Smoke (GP)": {
			_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
			_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";
			_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";
		};
		case "Flares": {
			for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_HandFlare_White";};
		};
		case "Flares(GP)": {
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_1Rnd_StarFlare_White_M203";};
		};
		case "Colored Flares": {
			_unit addItemToBackpack "ACE_HandFlare_Green";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Yellow";
		};
		case "Colored Flares(GP)": {
			_unit addItemToBackpack "CUP_FlareGreen_M203";
			_unit addItemToBackpack "CUP_FlareRed_M203";
			_unit addItemToBackpack "CUP_FlareYellow_M203";
		};

	//Explosives
		case "Anti Personel Mine Dispensor": {
			_unit addItemToBackpack "APERSMineDispenser_Mag";
			_unit addItemToBackpack "ACE_Clacker";
		};
		case "Anti Tank Mine": {
			_unit addItemToBackpack "CUP_Mine_M";
		};
		case "Satchel Charges": {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_PipeBomb_M";};;
			_unit addItemToBackpack "ACE_Clacker";
		};
		case "Tripwire Mine": {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "APERSTripMine_Wire_Mag";};;
		};

	//Utility
		case "Defusal Kit": {
			_unit addItemToBackpack "ACE_DefusalKit";
		};
		case "Deployable Tripod": {
			_unit addItemToBackpack "ACE_Tripod";
		};
		case "Entrenching Tool": {
			_unit addItemToBackpack "ACE_EntrenchingTool";
		};
		case "Mine Detector": {
			_unit addItemToBackpack "MineDetector";
		};
		case "ToolKit": {
			_unit addItemToBackpack "Toolkit";
		};
		case "Wire Cutter": {
			_unit addItemToBackpack "ACE_wirecutter";
		};
		case "Night Vision": {
			_unit linkItem "NVGoggles_OPFOR";
		};
		case "Binoculars":{
			_unit addWeapon "Binocular";
		};

		case "Laser Designator":{
			_unit addWeapon "Laserdesignator";
			_unit addItemToUniform "Laserbatteries";
		};
		case "Adv. Laser Designator":{
			_unit addWeapon "CUP_SOFLAM";
			_unit addItemToUniform "Laserbatteries";
		};


	};	
	};	
};
