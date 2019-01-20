fnc_AddAmmo = {
	params ["_unit","_class"];

if (!local _unit) exitWith {};

	switch (_class) do {
	    case "rifle": {
			_unit addItemToVest "CUP_HandGrenade_M67";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
	    };

	    case "survivor": {

	    };

	    case "ar": {

			_unit addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
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
			_unit addBackpack "B_AssaultPack_blk";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
			_unit addItemToBackpack "CUP_PG7V_M";
		};


	    case "marksman":{

			for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_17Rnd_9x19_glock17";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};
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

