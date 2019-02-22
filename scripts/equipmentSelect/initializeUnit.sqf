//Settings

//Uniforms
missionNamespace setVariable ["allowedHelmetsWest",["CUP_H_CDF_H_PASGT_UN"]];
missionNamespace setVariable ["allowedUniformsWest",["U_C_Man_casual_2_F","U_C_Man_casual_1_F","CUP_U_O_CHDKZ_Lopotev","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_Rangemaster","U_C_Man_casual_4_F"]];
missionNamespace setVariable ["armorLiteWest","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorMediumeWest","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorHeavyWest","V_PlateCarrier2_blk"];
missionNamespace setVariable ["allowedBackpacksWest",["V_PlateCarrier2_blk"]];


missionNamespace setVariable ["allowedHelmetsEast",["CUP_H_RUS_6B27"]];
missionNamespace setVariable ["allowedUniformsEast",["U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","CUP_B_USMC_Navy_Red","U_C_Man_casual_6_F"]];
missionNamespace setVariable ["armorLiteEast","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorMediumeEast","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorHeavyEast","V_PlateCarrier2_blk"];




missionNamespace setVariable ["allowedHelmetsCiv",["CUP_H_CDF_H_PASGT_UN"]];
missionNamespace setVariable ["allowedUniformsCiv",["U_C_Man_casual_2_F","U_C_Man_casual_1_F","CUP_U_O_CHDKZ_Lopotev","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_Rangemaster","U_C_Man_casual_4_F"]];
missionNamespace setVariable ["armorLiteCiv","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorMediumeCiv","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorHeavyCiv","V_PlateCarrier2_blk"];
missionNamespace setVariable ["allowedBackpacksCiv",["V_PlateCarrier2_blk"]];


missionNamespace setVariable ["allowedHelmetsGuer",["CUP_H_CDF_H_PASGT_UN"]];
missionNamespace setVariable ["allowedUniformsGuer",["U_C_Man_casual_2_F","U_C_Man_casual_1_F","CUP_U_O_CHDKZ_Lopotev","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_Rangemaster","U_C_Man_casual_4_F"]];
missionNamespace setVariable ["armorLiteGuer","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorMediumeGuer","V_PlateCarrier2_blk"];
missionNamespace setVariable ["armorHeavyGuer","V_PlateCarrier2_blk"];
missionNamespace setVariable ["allowedBackpacksGuer",["V_PlateCarrier2_blk"]];



//Code
fnc_InitEquip = {
	params ["_unit","_class","_side","_initial"];
	if (!local _unit) exitWith {};
	

	if(_initial) then {

		
			//Remove and Set Helmet
			removeHeadgear _unit;
			_helmetList  = missionNamespace getVariable (format["allowedHelmets%1",_side]);
			_helmet = selectRandom _helmetList;
			_unit addHeadgear _helmet;

			//Remove and Set Uniform
			removeUniform _unit;
			_uniformList  = missionNamespace getVariable (format["allowedUniforms%1",_side]);
			_uniform = selectRandom _uniformList;
			_unit forceAddUniform _uniform;

			//Vest
			removeVest _unit;
			_vest = missionNamespace getVariable (format["armorLite%1",_side]);
			_unit addVest _vest;


			switch (_class) do {
				case "survivor": {
					[_unit] remoteExec ["fnc_addRecruitAction"];
				};
				case "medic": {
					_unit setVariable ["Ace_medical_medicClass", 1];
				};
				case "engineer": {
					_unit setVariable ["ACE_IsEngineer", 1];
				};
			 	default {};
		};
	};

	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeBackpack _unit;
	removeVest _unit;
	removeGoggles _unit;
	switch (_class) do {
	    case "rifle": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			[_unit,"Frag Grenades"] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",5,"Optics",2,"Magnified Optics",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",3,"Light AT",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",3,"Tripwire Mine",1,"Satchel Charges",1,"Night Vision",1,"Binoculars",1,"Smoke Grenades",2];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

	    };
	    case "engineer": {

	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
			_unit addBackpack "B_AssaultPack_blk";

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			
			[_unit,"Defusal Kit"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Entrenching Tool"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Toolkit"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Wire Cutter"] remoteExec ["fnc_AddAddon",_unit];
			_class = "rifle";



	    };
	    case "survivor": {

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

	    };

	    case "scientist": {
	    	removeUniform _unit;
	    	_unit forceAddUniform "U_C_Scientist";

			for "_i" from 1 to 3 do {_unit addItemToUniform "CUP_6Rnd_45ACP_M";};
			_unit addVest "CUP_V_RUS_Smersh_1";
			for "_i" from 1 to 5 do {_unit addItemToVest "ACE_M84";};
			for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShell";};
			_unit addItemToVest "CUP_6Rnd_45ACP_M";
			for "_i" from 1 to 2 do {_unit addItemToVest "CUP_PipeBomb_M";};
			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

	    };

	    case "demoMan": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 2 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 5 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
			_unit addBackpack "B_AssaultPack_blk";

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";


			[_unit,"Defusal Kit"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Satchel Charges"] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["Tripwire Mine",2,"Anti Personel Mine Dispensor",1,"Anti Tank Mine",2];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_class = "rifle";



	    };


	    case "FTLMilitia": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			[_unit,"Frag Grenades"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Smoke Grenades"] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["Optics",1,"Light AT",1,"Night Vision",1,"Magnified Optics",1,"Binoculars",1,"Satchel Charges",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];
			_class = "rifle";
	    };



	    case "rifleMilitia": {

			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_10x_303_M";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 5 do {_unit addItemToVest "CUP_10x_303_M";};
			_unit addBackpack "CUP_B_AlicePack_Khaki";

			_unit addWeapon "CUP_srifle_LeeEnfield";


			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";


			_bonusGear = ["empty",3,"Light AT",1,"Frag Grenades",2];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];
	    };


	    case "MedicMilitia": {

			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_10x_303_M";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 5 do {_unit addItemToVest "CUP_10x_303_M";};
			_unit addBackpack "CUP_B_AlicePack_Khaki";
			for "_i" from 1 to 100 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_bloodIV_500";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_morphine";};


			_unit addWeapon "CUP_srifle_LeeEnfield";


			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			_bonusGear = ["empty",3,"Smoke Grenades",2];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];
	    };



	    case "ATMilitia": {

			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_10x_303_M";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 5 do {_unit addItemToVest "CUP_10x_303_M";};
			_unit addBackpack "CUP_B_AlicePack_Khaki";

			_unit addWeapon "CUP_srifle_LeeEnfield";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			_bonusGear = ["Light AT",3,"RPG",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];
	    };

	    case "ARMilitia": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};



			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			_bonusGear = ["empty",2,"Frag Grenades",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

	    };


	    case "MarksmanMilitia": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_5x_22_LR_17_HMR_M";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_5x_22_LR_17_HMR_M";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_6Rnd_45ACP_M";};


			_unit addWeapon "CUP_srifle_CZ550";
			_unit addWeapon "CUP_hgun_TaurusTracker455";


			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";


			_bonusGear = ["empty",3,"Binoculars",1,"Deployable Tripod",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

	    };

	    case "uavOperator": {
	    	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";

			_class = "rifle";

			switch (_side) do {
			    case "West": {
					this linkItem "B_UavTerminal";
				};
				case "East": {
					this linkItem "O_UavTerminal";
				};
				case "Civ": {
					this linkItem "O_UavTerminal";
				};
				case "Guer": {
					this linkItem "I_UavTerminal";
				};
		    		};
				};


	    case "ar": {
			comment "Add containers";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
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


			_bonusGear = ["empty",6,"Optics",3,"Magnified Optics",2,"NV Magnified Optics",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

		};


	    case "ftl": {
	    
			for "_i" from 1 to 20 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 12 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 15 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 24 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};

			_unit addWeapon "CUP_arifle_M16A4_GL";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "ItemRadio";


			[_unit,"Frag Grenades(GP)"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Smoke Grenades(GP)"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Smoke Grenades"] remoteExec ["fnc_AddAddon",_unit];
			[_unit,"Flares(GP)"] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",9,"Optics",5,"Magnified Optics",4,"NV Magnified Optics",2,"Adv NV Magnified Optics",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",3,"Hunt IR Kit",1,"Colored Smoke (GP)",2,"Entrenching Tool",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_bonusGear = ["empty",6,"Hunt IR Kit",1,"Colored Smoke (GP)",2,"Entrenching Tool",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

		};

	    case "at": {
			comment "Add containers";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};

			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit addBackpack "B_AssaultPack_blk";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "tf_anprc152_3";

			_bonusGear = ["Light AT",5,"RPG",3,"Stinger",1,"Guided AT",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_class = "rifle";
		};

		case "aa": {
			comment "Add containers";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};

			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};

			_unit addWeapon "CUP_arifle_M16A4_Base";
			_unit addPrimaryWeaponItem "CUP_acc_Flashlight";

			_unit addBackpack "B_AssaultPack_blk";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "tf_anprc152_3";

			_bonusGear = ["Light AT",1,"RPG",2,"Stinger",2];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

			_class = "rifle";
		};

	    case "sniperNight":{


		    	_unit addVest "V_PlateCarrier2_blk";
				for "_i" from 1 to 2 do {_unit addItemToUniform "7Rnd_408_Mag";};
				for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
				for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
				for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
				for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
				for "_i" from 1 to 5 do {_unit addItemToVest "7Rnd_408_Mag";};
				_unit addBackpack "B_AssaultPack_blk";		

				for "_i" from 1 to 2 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};

				_unit addWeapon "srifle_LRR_F";
				_unit addWeapon "hgun_P07_F";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "ItemWatch";
				_unit linkItem "ItemRadio";

				_bonusGear = ["NV Magnified Optics",5,"Adv NV Magnified Optics",1];
				_toAdd = selectRandomWeighted _bonusGear;
				[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];



	    };

	    	case "reconRifleman":{

				for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
				_unit addItemToUniform "16Rnd_9x21_Mag";
				_unit addVest "V_PlateCarrier1_rgr";
				for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
				_unit addItemToVest "SmokeShell";
				_unit addItemToVest "SmokeShellGreen";
				for "_i" from 1 to 5 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
				for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
				_unit addBackpack "B_AssaultPack_mcamo_Ammo";
				_unit addItemToBackpack "ACE_IR_Strobe_Item";
				for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
				for "_i" from 1 to 2 do {_unit addItemToBackpack "MiniGrenade";};
				for "_i" from 1 to 6 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
				for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Chemlight_HiWhite";};
				for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_HandFlare_Red";};
				_unit addItemToBackpack "B_IR_Grenade";

				for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
				for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
				for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
				_unit addWeapon "CUP_arifle_M16A4_Base";
				_unit addPrimaryWeaponItem "CUP_muzzle_snds_M16";
				_unit addPrimaryWeaponItem "CUP_acc_Flashlight";
				_unit addWeapon "hgun_P07_F";
				_unit addHandgunItem "muzzle_snds_L";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "ItemWatch";
				_unit linkItem "ItemRadio";
				_unit linkItem "NVGoggles";

	   	};
		    case "marksman":{

			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			for "_i" from 1 to 3 do {_unit addItemToUniform "CUP_17Rnd_9x19_glock17";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 4 do {_unit addItemToVest "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
			for "_i" from 1 to 3 do {_unit addItemToVest "CUP_20Rnd_762x51_DMR";};
			for "_i" from 1 to 3 do {_unit addItemToVest "20Rnd_762x51_Mag";};
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_20Rnd_762x51_Mag_Tracer";};
			for "_i" from 1 to 7 do {_unit addItemToBackpack "CUP_17Rnd_9x19_glock17";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};

			_unit addWeapon "CUP_srifle_M14";
			_unit addWeapon "CUP_hgun_Glock17";
			_unit addHandgunItem "CUP_acc_Glock17_Flashlight";

			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemWatch";
			_unit linkItem "tf_anprc152_2";


			_bonusGear = ["Magnified Optics",5,"NV Magnified Optics",2,"Adv NV Magnified Optics",1];
			_toAdd = selectRandomWeighted _bonusGear;
			[_unit,_toAdd] remoteExec ["fnc_AddAddon",_unit];

	    };


	        case "medic":{


			for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
			_unit addVest "V_PlateCarrier2_blk";
			for "_i" from 1 to 5 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
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

			[_unit,"Smoke Grenades"] remoteExec ["fnc_AddAddon",_unit];

	    };

	    default {};
	};

	_unit setVariable ["class", _class, true];
	[_unit,_class] remoteExec ["fnc_addClassSwitchAction",_unit];
	[_unit,_class] remoteExec ["fnc_addResupplyAction",_unit];

};
