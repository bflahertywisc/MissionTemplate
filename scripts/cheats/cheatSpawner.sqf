
FNC_spawnCustomUnit_Veh_OPF_Air ={
    params ["_location", "_type", "_group","_commander"];

    switch (_type) do {
    	case "Frogfoot": {
			_veh =createvehicle ["CUP_B_Su25_CDF", _location, [], 0, "FORM"];
      _veh setVehicleLock "UNLOCKED";
      _veh setDir 180;
      _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP

   		};
    	case "Littlebird AH": {
    		_veh =createvehicle ["CUP_B_AH6J_USA", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP

   		};

        case "WWI Fighter": {
        _veh =createvehicle ["CUP_O_AN2_TK", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _gun =createvehicle ["CUP_O_DSHKM_MiniTripod_SLA", _location, [], 0, "FORM"];
        _gun setVehicleLock "UNLOCKED";
        _gun setDir 180;
        _gun addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _gun attachTo [_veh,[0, 2, 2.8],"kridlo"];
        _gun addAction ["Mount Front Gun",{
          _guntomount = _this select 3 select 1;
          _this select 1 moveInTurret [_guntomount, [0]] 
        },[_veh,_gun],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
      };

      case "WWI Fighter++": {
        _veh =createvehicle ["CUP_O_AN2_TK", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _gun =createvehicle ["CUP_O_ZU23_RU", _location, [], 0, "FORM"];
        _gun setVehicleLock "UNLOCKED";
        _gun setDir 180;
        _gun addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _gun addAction ["Mount UP!",{
          _guntomount = _this select 3 select 1;
          _vehicletomount = _this select 3 select 0;
          _guntomount attachTo [_vehicletomount,[0, 2, 2.8],"kridlo"];
        },[_veh,_gun],1.5,true,true, "","true",15,false,""];
      };

        case "Goodbye Kitty": {
        _veh =createvehicle ["CUP_C_Golf4_Kitty_civ", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _gun =createvehicle ["CUP_O_D30_AT_SLA", _location, [], 0, "FORM"];
        _gun setVehicleLock "UNLOCKED";
        _gun setDir 180;
        _gun addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _gun addAction ["Mount UP!",{
          _guntomount = _this select 3 select 1;
          _vehicletomount = _this select 3 select 0;
          _guntomount attachTo [_vehicletomount,[0, 0, .7],"kridlo"];
        },[_veh,_gun],1.5,true,true, "","true",15,false,""];
      };

        case "Joust": {
        _veh =createvehicle ["CUP_I_SUV_ION", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _pole = createvehicle ["FlagPole_F", _location, [], 0, "FORM"];
        _pole attachTo [_veh,[0, 7, -.8],"motor"];
        _pole setVectorDirAndUp [ [0, 0, -1], [0, 1, 0] ];

        _veh addAction ["Arm Lance",{
          _pollToAttach = _this select 0;
          _mine = createMine ["APERSMine", [0,0,0], [], 0];
          _mine attachTo [_pollToattach,[0, 10, -.3],"stozar"];
        },[_pole],1.5,true,true, "","true",15,false,""];
      };

      case "Goodbye Kitty Manned": {
        _veh =createvehicle ["CUP_C_Golf4_Kitty_civ", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _gun =createvehicle ["CUP_O_D30_AT_SLA", _location, [], 0, "FORM"];

        _gun setVehicleLock "UNLOCKED";
        _gun setDir 180;
        _gun addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _gun attachTo [_veh,[0, 0, .7],"kridlo"];
        createVehicleCrew _gun;
        _gun disableAI "TARGET";
        _veh addAction ["Fire",{
          _g1 =_this select 3 select 0;
          _g1 fire ["CUP_Vcannon_D30AT_veh"];            
        },[_gun],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
      };

      case "Party Bus": {
        _veh =createvehicle ["CUP_C_Ikarus_Chernarus", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
        _gun =createvehicle ["CUP_O_DSHKM_MiniTripod_SLA", _location, [], 0, "FORM"];
        _gun setVehicleLock "UNLOCKED";
        _gun setDir 180;
        _gun attachTo [_veh,[0, 2, 2.8],"kridlo"];
        _gun addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _veh addAction ["Get In Front Gun",{
           _guntomount = _this select 3 select 1;
          _this select 1 moveInTurret [_guntomount, [0]]         
        },[_veh,_gun],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
      };

      case "Broadside Bus": {
        _veh =createvehicle ["CUP_C_Ikarus_Chernarus", _location, [], 0, "FORM"];
        _veh setVehicleLock "UNLOCKED";
        _gunL1 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL1;
        _gunL1 disableAI "TARGET";
        _gunL1 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL2 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL2 ;
        _gunL2 disableAI "TARGET";
        _gunL2 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL3 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL3;
        _gunL3 disableAI "TARGET";
        _gunL3 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL1 attachTo [_veh,[-1.5, 2.5, 0],"kridlo"];
        _gunL1 setDir 270;
        _gunL2 attachTo [_veh,[-1.5, 0, 0],"kridlo"];
        _gunL2 setDir 270;
        _gunL3 attachTo [_veh,[-1.5, -2.5, 0],"kridlo"];
        _gunL3 setDir 270;


        _gunR1 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR1;
        _gunR1 disableAI "TARGET";
        _gunR1 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR2 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR2 ;
        _gunR2 disableAI "TARGET";
        _gunR2 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR3 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR3;
        _gunR3 disableAI "TARGET";
        _gunR3 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR1 attachTo [_veh,[1.5, 2.5, 0],"kridlo"];
        _gunR1 setDir 90;
        _gunR2 attachTo [_veh,[1.5, 0, 0],"kridlo"];
        _gunR2 setDir 90;
        _gunR3 attachTo [_veh,[1.5, -2.5, 0],"kridlo"];
        _gunR3 setDir 90;
        _veh setDir 180;

        _veh addAction ["Fire Left",{
          _g1 =_this select 3 select 0;
          _g2 =_this select 3 select 1;
          _g3 =_this select 3 select 2;
          _g1 fire ["CUP_Vacannon_SPG9_veh"];
          _g2 fire ["CUP_Vacannon_SPG9_veh"];
          _g3 fire ["CUP_Vacannon_SPG9_veh"];             
        },[_gunL1,_gunL2,_gunL3],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
    

        _veh addAction ["Fire Right",{
        _g1 =_this select 3 select 0;
        _g2 =_this select 3 select 1;
        _g3 =_this select 3 select 2;
        _g1 fire ["CUP_Vacannon_SPG9_veh"];
        _g2 fire ["CUP_Vacannon_SPG9_veh"];
        _g3 fire ["CUP_Vacannon_SPG9_veh"];               
        },[_gunR1,_gunR2,_gunR3],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
      };


      case "Super Combat WWI": {
        _veh =createvehicle ["CUP_O_AN2_TK", _location, [], 0, "FORM"];
_veh addWeaponTurret ["LMG_RCWS",[-1]]; 
_veh addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_127",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_NSVT",[-1]]; 
_veh addMagazineTurret ["450Rnd_127x108_Ball",[-1]];

_veh addWeaponTurret ["SmokeLauncher",[-1]]; 
_veh addMagazineTurret ["SmokeLauncherMag",[-1]];
_veh addMagazineTurret ["SmokeLauncherMag_boat",[-1]];

_veh addWeaponTurret ["CMFlareLauncher",[-1]]; 
_veh addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine",[-1]];
_veh addMagazineTurret ["240Rnd_CMFlareMagazine",[-1]];

_veh addWeaponTurret ["M134_minigun",[-1]]; 
_veh addMagazineTurret ["5000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["mortar_82mm",[-1]]; 
_veh addMagazineTurret ["8Rnd_82mm_Mo_shells",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Flare_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Smoke_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_guided",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_LG",[-1]];

_veh addWeaponTurret ["missiles_DAGR",[-1]]; 
_veh addMagazineTurret ["24Rnd_PG_missiles",[-1]];

_veh addWeaponTurret ["missiles_DAR",[-1]]; 
_veh addMagazineTurret ["24Rnd_missiles",[-1]];

_veh addWeaponTurret ["GMG_20mm",[-1]]; 
_veh addMagazineTurret ["200Rnd_20mm_G_belt",[-1]];

_veh addWeaponTurret ["autocannon_40mm_CTWS",[-1]]; 
_veh addMagazineTurret ["60Rnd_40mm_GPR_shells",[-1]];
_veh addMagazineTurret ["40Rnd_40mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["gatling_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["gatling_30mm",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_ASRAAM",[-1]]; 
_veh addMagazineTurret ["4Rnd_AAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_AAA_missiles_MI02",[-1]];


_veh addWeaponTurret ["missiles_SCALPEL",[-1]]; 
_veh addMagazineTurret ["8Rnd_LG_scalpel",[-1]];

_veh addWeaponTurret ["missiles_titan",[-1]]; 
_veh addMagazineTurret ["5Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_Titan_long_missiles",[-1]];

_veh addWeaponTurret ["rockets_Skyfire",[-1]]; 
_veh addMagazineTurret ["38Rnd_80mm_rockets",[-1]];

_veh addWeaponTurret ["cannon_120mm",[-1]]; 
_veh addMagazineTurret ["32Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["30Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["cannon_125mm",[-1]]; 
_veh addMagazineTurret ["24Rnd_125mm_APFSDS",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HE",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HEAT",[-1]];

_veh addWeaponTurret ["cannon_105mm",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["20Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_25mm",[-1]]; 
_veh addMagazineTurret ["1000Rnd_25mm_shells",[-1]];

_veh addWeaponTurret ["autocannon_35mm",[-1]]; 
_veh addMagazineTurret ["680Rnd_35mm_AA_shells",[-1]];

_veh addWeaponTurret ["mortar_155mm_AMOS",[-1]]; 
_veh addMagazineTurret ["32Rnd_155mm_Mo_shells",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_smoke",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_guided",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_LG",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_mine",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_Cluster",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_AT_mine",[-1]];

_veh addWeaponTurret ["missiles_Zephyr",[-1]]; 
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["missiles_titan_static",[-1]]; 
_veh addMagazineTurret ["1Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["1Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["GBU12BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_GBU12_LGB",[-1]];
_veh addMagazineTurret ["2Rnd_GBU12_LGB_MI10",[-1]];

_veh addWeaponTurret ["Mk82BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_Mk82",[-1]];
_veh addMagazineTurret ["2Rnd_Mk82_MI08",[-1]];

_veh addWeaponTurret ["rockets_230mm_GAT",[-1]]; 
_veh addMagazineTurret ["12Rnd_230mm_rockets",[-1]];
_veh addWeaponTurret ["LMG_coax",[-1]]; 
_veh addMagazineTurret ["2000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["autocannon_30mm",[-1]]; 
_veh addMagazineTurret ["140Rnd_30mm_MP_shells",[-1]];
_veh addMagazineTurret ["60Rnd_30mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["cannon_120mm_long",[-1]]; 
_veh addMagazineTurret ["28Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["14Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["Twin_Cannon_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];

_veh addWeaponTurret ["Missile_AA_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_04_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_02_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["6Rnd_Missile_AGM_02_F",[-1]];

_veh addWeaponTurret ["Rocket_04_HE_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_04_AP_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_AP_F",[-1]];


_veh addWeaponTurret ["Bomb_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Bomb_04_F",[-1]];

_veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];

_veh addWeaponTurret ["Missile_AA_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_03_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_01_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Missile_AGM_01_F",[-1]];

_veh addWeaponTurret ["Rocket_03_HE_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_03_AP_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_AP_F",[-1]];

_veh addWeaponTurret ["Bomb_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Bomb_03_F",[-1]];

_veh addWeaponTurret ["HMG_127_MBT",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["HMG_127_LSV_01",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["MMG_02_vehicle",[-1]]; 
_veh addMagazineTurret ["130Rnd_338_Mag",[-1]];

_veh addWeaponTurret ["gatling_20mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["4000Rnd_20mm_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["autocannon_40mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["240Rnd_40mm_GPR_Tracer_Red_shells",[-1]];
_veh addMagazineTurret ["160Rnd_40mm_APFSDS_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["cannon_105mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["100Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_30mm_VTOL_02",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_Jian",[-1]]; 
_veh addMagazineTurret ["4Rnd_LG_Jian",[-1]];
        _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
      };


      case "Super Combat Bird": {
        _veh =createvehicle ["CUP_B_AH6J_USA", _location, [], 0, "FORM"];
_veh addWeaponTurret ["LMG_RCWS",[-1]]; 
_veh addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_127",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_NSVT",[-1]]; 
_veh addMagazineTurret ["450Rnd_127x108_Ball",[-1]];

_veh addWeaponTurret ["SmokeLauncher",[-1]]; 
_veh addMagazineTurret ["SmokeLauncherMag",[-1]];
_veh addMagazineTurret ["SmokeLauncherMag_boat",[-1]];

_veh addWeaponTurret ["CMFlareLauncher",[-1]]; 
_veh addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine",[-1]];
_veh addMagazineTurret ["240Rnd_CMFlareMagazine",[-1]];

_veh addWeaponTurret ["M134_minigun",[-1]]; 
_veh addMagazineTurret ["5000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["mortar_82mm",[-1]]; 
_veh addMagazineTurret ["8Rnd_82mm_Mo_shells",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Flare_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Smoke_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_guided",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_LG",[-1]];

_veh addWeaponTurret ["missiles_DAGR",[-1]]; 
_veh addMagazineTurret ["24Rnd_PG_missiles",[-1]];

_veh addWeaponTurret ["missiles_DAR",[-1]]; 
_veh addMagazineTurret ["24Rnd_missiles",[-1]];

_veh addWeaponTurret ["GMG_20mm",[-1]]; 
_veh addMagazineTurret ["200Rnd_20mm_G_belt",[-1]];

_veh addWeaponTurret ["autocannon_40mm_CTWS",[-1]]; 
_veh addMagazineTurret ["60Rnd_40mm_GPR_shells",[-1]];
_veh addMagazineTurret ["40Rnd_40mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["gatling_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["gatling_30mm",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_ASRAAM",[-1]]; 
_veh addMagazineTurret ["4Rnd_AAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_AAA_missiles_MI02",[-1]];


_veh addWeaponTurret ["missiles_SCALPEL",[-1]]; 
_veh addMagazineTurret ["8Rnd_LG_scalpel",[-1]];

_veh addWeaponTurret ["missiles_titan",[-1]]; 
_veh addMagazineTurret ["5Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_Titan_long_missiles",[-1]];

_veh addWeaponTurret ["rockets_Skyfire",[-1]]; 
_veh addMagazineTurret ["38Rnd_80mm_rockets",[-1]];

_veh addWeaponTurret ["cannon_120mm",[-1]]; 
_veh addMagazineTurret ["32Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["30Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["cannon_125mm",[-1]]; 
_veh addMagazineTurret ["24Rnd_125mm_APFSDS",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HE",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HEAT",[-1]];

_veh addWeaponTurret ["cannon_105mm",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["20Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_25mm",[-1]]; 
_veh addMagazineTurret ["1000Rnd_25mm_shells",[-1]];

_veh addWeaponTurret ["autocannon_35mm",[-1]]; 
_veh addMagazineTurret ["680Rnd_35mm_AA_shells",[-1]];

_veh addWeaponTurret ["mortar_155mm_AMOS",[-1]]; 
_veh addMagazineTurret ["32Rnd_155mm_Mo_shells",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_smoke",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_guided",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_LG",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_mine",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_Cluster",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_AT_mine",[-1]];

_veh addWeaponTurret ["missiles_Zephyr",[-1]]; 
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["missiles_titan_static",[-1]]; 
_veh addMagazineTurret ["1Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["1Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["GBU12BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_GBU12_LGB",[-1]];
_veh addMagazineTurret ["2Rnd_GBU12_LGB_MI10",[-1]];

_veh addWeaponTurret ["Mk82BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_Mk82",[-1]];
_veh addMagazineTurret ["2Rnd_Mk82_MI08",[-1]];

_veh addWeaponTurret ["rockets_230mm_GAT",[-1]]; 
_veh addMagazineTurret ["12Rnd_230mm_rockets",[-1]];
_veh addWeaponTurret ["LMG_coax",[-1]]; 
_veh addMagazineTurret ["2000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["autocannon_30mm",[-1]]; 
_veh addMagazineTurret ["140Rnd_30mm_MP_shells",[-1]];
_veh addMagazineTurret ["60Rnd_30mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["cannon_120mm_long",[-1]]; 
_veh addMagazineTurret ["28Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["14Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["Twin_Cannon_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];

_veh addWeaponTurret ["Missile_AA_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_04_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_02_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["6Rnd_Missile_AGM_02_F",[-1]];

_veh addWeaponTurret ["Rocket_04_HE_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_04_AP_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_AP_F",[-1]];


_veh addWeaponTurret ["Bomb_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Bomb_04_F",[-1]];

_veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];

_veh addWeaponTurret ["Missile_AA_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_03_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_01_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Missile_AGM_01_F",[-1]];

_veh addWeaponTurret ["Rocket_03_HE_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_03_AP_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_AP_F",[-1]];

_veh addWeaponTurret ["Bomb_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Bomb_03_F",[-1]];

_veh addWeaponTurret ["HMG_127_MBT",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["HMG_127_LSV_01",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["MMG_02_vehicle",[-1]]; 
_veh addMagazineTurret ["130Rnd_338_Mag",[-1]];

_veh addWeaponTurret ["gatling_20mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["4000Rnd_20mm_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["autocannon_40mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["240Rnd_40mm_GPR_Tracer_Red_shells",[-1]];
_veh addMagazineTurret ["160Rnd_40mm_APFSDS_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["cannon_105mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["100Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_30mm_VTOL_02",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_Jian",[-1]]; 
_veh addMagazineTurret ["4Rnd_LG_Jian",[-1]];
        _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
      };


  case "Super APC": {
_veh =createvehicle ["I_APC_Tracked_03_cannon_F", _location, [], 0, "FORM"];

_veh addWeaponTurret ["LMG_RCWS",[0]]; 
_veh addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Red",[0]];

_veh addWeaponTurret ["HMG_127",[0]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag_Tracer_Red",[0]];

_veh addWeaponTurret ["HMG_NSVT",[0]]; 
_veh addMagazineTurret ["450Rnd_127x108_Ball",[0]];

_veh addWeaponTurret ["SmokeLauncher",[0]]; 
_veh addMagazineTurret ["SmokeLauncherMag",[0]];
_veh addMagazineTurret ["SmokeLauncherMag_boat",[0]];

_veh addWeaponTurret ["CMFlareLauncher",[0]]; 
_veh addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine",[0]];
_veh addMagazineTurret ["240Rnd_CMFlareMagazine",[0]];

_veh addWeaponTurret ["M134_minigun",[0]]; 
_veh addMagazineTurret ["5000Rnd_762x51_Belt",[0]];

_veh addWeaponTurret ["mortar_82mm",[0]]; 
_veh addMagazineTurret ["8Rnd_82mm_Mo_shells",[0]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Flare_white",[0]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Smoke_white",[0]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_guided",[0]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_LG",[0]];

_veh addWeaponTurret ["missiles_DAGR",[0]]; 
_veh addMagazineTurret ["24Rnd_PG_missiles",[0]];

_veh addWeaponTurret ["missiles_DAR",[0]]; 
_veh addMagazineTurret ["24Rnd_missiles",[0]];

_veh addWeaponTurret ["GMG_20mm",[0]]; 
_veh addMagazineTurret ["200Rnd_20mm_G_belt",[0]];

_veh addWeaponTurret ["autocannon_40mm_CTWS",[0]]; 
_veh addMagazineTurret ["60Rnd_40mm_GPR_shells",[0]];
_veh addMagazineTurret ["40Rnd_40mm_APFSDS_shells",[0]];

_veh addWeaponTurret ["gatling_20mm",[0]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[0]];

_veh addWeaponTurret ["gatling_30mm",[0]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[0]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[0]];

_veh addWeaponTurret ["missiles_ASRAAM",[0]]; 
_veh addMagazineTurret ["4Rnd_AAA_missiles",[0]];
_veh addMagazineTurret ["4Rnd_AAA_missiles_MI02",[0]];


_veh addWeaponTurret ["missiles_SCALPEL",[0]]; 
_veh addMagazineTurret ["8Rnd_LG_scalpel",[0]];

_veh addWeaponTurret ["missiles_titan",[0]]; 
_veh addMagazineTurret ["5Rnd_GAT_missiles",[0]];
_veh addMagazineTurret ["4Rnd_GAA_missiles",[0]];
_veh addMagazineTurret ["4Rnd_Titan_long_missiles",[0]];

_veh addWeaponTurret ["rockets_Skyfire",[0]]; 
_veh addMagazineTurret ["38Rnd_80mm_rockets",[0]];

_veh addWeaponTurret ["cannon_120mm",[0]]; 
_veh addMagazineTurret ["32Rnd_120mm_APFSDS_shells",[0]];
_veh addMagazineTurret ["30Rnd_120mm_HE_shells",[0]];

_veh addWeaponTurret ["cannon_125mm",[0]]; 
_veh addMagazineTurret ["24Rnd_125mm_APFSDS",[0]];
_veh addMagazineTurret ["12Rnd_125mm_HE",[0]];
_veh addMagazineTurret ["12Rnd_125mm_HEAT",[0]];

_veh addWeaponTurret ["cannon_105mm",[0]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[0]];
_veh addMagazineTurret ["20Rnd_105mm_HEAT_MP",[0]];

_veh addWeaponTurret ["gatling_25mm",[0]]; 
_veh addMagazineTurret ["1000Rnd_25mm_shells",[0]];

_veh addWeaponTurret ["autocannon_35mm",[0]]; 
_veh addMagazineTurret ["680Rnd_35mm_AA_shells",[0]];

_veh addWeaponTurret ["mortar_155mm_AMOS",[0]]; 
_veh addMagazineTurret ["32Rnd_155mm_Mo_shells",[0]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_smoke",[0]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_guided",[0]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_LG",[0]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_mine",[0]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_Cluster",[0]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_AT_mine",[0]];

_veh addWeaponTurret ["missiles_Zephyr",[0]]; 
_veh addMagazineTurret ["4Rnd_GAA_missiles",[0]];

_veh addWeaponTurret ["missiles_titan_static",[0]]; 
_veh addMagazineTurret ["1Rnd_GAT_missiles",[0]];
_veh addMagazineTurret ["1Rnd_GAA_missiles",[0]];

_veh addWeaponTurret ["GBU12BombLauncher",[0]]; 
_veh addMagazineTurret ["2Rnd_GBU12_LGB",[0]];
_veh addMagazineTurret ["2Rnd_GBU12_LGB_MI10",[0]];

_veh addWeaponTurret ["Mk82BombLauncher",[0]]; 
_veh addMagazineTurret ["2Rnd_Mk82",[0]];
_veh addMagazineTurret ["2Rnd_Mk82_MI08",[0]];

_veh addWeaponTurret ["rockets_230mm_GAT",[0]]; 
_veh addMagazineTurret ["12Rnd_230mm_rockets",[0]];
_veh addWeaponTurret ["LMG_coax",[0]]; 
_veh addMagazineTurret ["2000Rnd_762x51_Belt",[0]];

_veh addWeaponTurret ["autocannon_30mm",[0]]; 
_veh addMagazineTurret ["140Rnd_30mm_MP_shells",[0]];
_veh addMagazineTurret ["60Rnd_30mm_APFSDS_shells",[0]];

_veh addWeaponTurret ["cannon_120mm_long",[0]]; 
_veh addMagazineTurret ["28Rnd_120mm_APFSDS_shells",[0]];
_veh addMagazineTurret ["14Rnd_120mm_HE_shells",[0]];

_veh addWeaponTurret ["Twin_Cannon_20mm",[0]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[0]];

_veh addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[0]]; 
_veh addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[0]];

_veh addWeaponTurret ["Missile_AA_04_Plane_CAS_01_F",[0]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_04_F",[0]];

_veh addWeaponTurret ["Missile_AGM_02_Plane_CAS_01_F",[0]]; 
_veh addMagazineTurret ["6Rnd_Missile_AGM_02_F",[0]];

_veh addWeaponTurret ["Rocket_04_HE_Plane_CAS_01_F",[0]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_HE_F",[0]];

_veh addWeaponTurret ["Rocket_04_AP_Plane_CAS_01_F",[0]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_AP_F",[0]];

_veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[0]]; 
_veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[0]];

_veh addWeaponTurret ["Missile_AA_03_Plane_CAS_02_F",[0]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_03_F",[0]];

_veh addWeaponTurret ["Missile_AGM_01_Plane_CAS_02_F",[0]]; 
_veh addMagazineTurret ["4Rnd_Missile_AGM_01_F",[0]];

_veh addWeaponTurret ["Rocket_03_HE_Plane_CAS_02_F",[0]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_HE_F",[0]];

_veh addWeaponTurret ["Rocket_03_AP_Plane_CAS_02_F",[0]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_AP_F",[0]];


_veh addWeaponTurret ["HMG_127_MBT",[0]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[0]];

_veh addWeaponTurret ["HMG_127_LSV_01",[0]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[0]];

_veh addWeaponTurret ["MMG_02_vehicle",[0]]; 
_veh addMagazineTurret ["130Rnd_338_Mag",[0]];

_veh addWeaponTurret ["gatling_20mm_VTOL_01",[0]]; 
_veh addMagazineTurret ["4000Rnd_20mm_Tracer_Red_shells",[0]];

_veh addWeaponTurret ["autocannon_40mm_VTOL_01",[0]]; 
_veh addMagazineTurret ["240Rnd_40mm_GPR_Tracer_Red_shells",[0]];
_veh addMagazineTurret ["160Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];

_veh addWeaponTurret ["cannon_105mm_VTOL_01",[0]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[0]];
_veh addMagazineTurret ["100Rnd_105mm_HEAT_MP",[0]];

_veh addWeaponTurret ["gatling_30mm_VTOL_02",[0]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[0]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[0]];

_veh addWeaponTurret ["missiles_Jian",[0]]; 
_veh addMagazineTurret ["4Rnd_LG_Jian",[0]];
        _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
      };

      case "Super Combat Frog": {
        _veh =createvehicle ["CUP_B_Su25_CDF", _location, [], 0, "FORM"];
_veh addWeaponTurret ["LMG_RCWS",[-1]]; 
_veh addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_127",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag_Tracer_Red",[-1]];

_veh addWeaponTurret ["HMG_NSVT",[-1]]; 
_veh addMagazineTurret ["450Rnd_127x108_Ball",[-1]];

_veh addWeaponTurret ["SmokeLauncher",[-1]]; 
_veh addMagazineTurret ["SmokeLauncherMag",[-1]];
_veh addMagazineTurret ["SmokeLauncherMag_boat",[-1]];

_veh addWeaponTurret ["CMFlareLauncher",[-1]]; 
_veh addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine",[-1]];
_veh addMagazineTurret ["240Rnd_CMFlareMagazine",[-1]];

_veh addWeaponTurret ["M134_minigun",[-1]]; 
_veh addMagazineTurret ["5000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["mortar_82mm",[-1]]; 
_veh addMagazineTurret ["8Rnd_82mm_Mo_shells",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Flare_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_Smoke_white",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_guided",[-1]];
_veh addMagazineTurret ["8Rnd_82mm_Mo_LG",[-1]];

_veh addWeaponTurret ["missiles_DAGR",[-1]]; 
_veh addMagazineTurret ["24Rnd_PG_missiles",[-1]];

_veh addWeaponTurret ["missiles_DAR",[-1]]; 
_veh addMagazineTurret ["24Rnd_missiles",[-1]];

_veh addWeaponTurret ["GMG_20mm",[-1]]; 
_veh addMagazineTurret ["200Rnd_20mm_G_belt",[-1]];

_veh addWeaponTurret ["autocannon_40mm_CTWS",[-1]]; 
_veh addMagazineTurret ["60Rnd_40mm_GPR_shells",[-1]];
_veh addMagazineTurret ["40Rnd_40mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["gatling_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["gatling_30mm",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_ASRAAM",[-1]]; 
_veh addMagazineTurret ["4Rnd_AAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_AAA_missiles_MI02",[-1]];


_veh addWeaponTurret ["missiles_SCALPEL",[-1]]; 
_veh addMagazineTurret ["8Rnd_LG_scalpel",[-1]];

_veh addWeaponTurret ["missiles_titan",[-1]]; 
_veh addMagazineTurret ["5Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];
_veh addMagazineTurret ["4Rnd_Titan_long_missiles",[-1]];

_veh addWeaponTurret ["rockets_Skyfire",[-1]]; 
_veh addMagazineTurret ["38Rnd_80mm_rockets",[-1]];

_veh addWeaponTurret ["cannon_120mm",[-1]]; 
_veh addMagazineTurret ["32Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["30Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["cannon_125mm",[-1]]; 
_veh addMagazineTurret ["24Rnd_125mm_APFSDS",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HE",[-1]];
_veh addMagazineTurret ["12Rnd_125mm_HEAT",[-1]];

_veh addWeaponTurret ["cannon_105mm",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["20Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_25mm",[-1]]; 
_veh addMagazineTurret ["1000Rnd_25mm_shells",[-1]];

_veh addWeaponTurret ["autocannon_35mm",[-1]]; 
_veh addMagazineTurret ["680Rnd_35mm_AA_shells",[-1]];

_veh addWeaponTurret ["mortar_155mm_AMOS",[-1]]; 
_veh addMagazineTurret ["32Rnd_155mm_Mo_shells",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_smoke",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_guided",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_LG",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_mine",[-1]];
_veh addMagazineTurret ["2Rnd_155mm_Mo_Cluster",[-1]];
_veh addMagazineTurret ["6Rnd_155mm_Mo_AT_mine",[-1]];

_veh addWeaponTurret ["missiles_Zephyr",[-1]]; 
_veh addMagazineTurret ["4Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["missiles_titan_static",[-1]]; 
_veh addMagazineTurret ["1Rnd_GAT_missiles",[-1]];
_veh addMagazineTurret ["1Rnd_GAA_missiles",[-1]];

_veh addWeaponTurret ["GBU12BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_GBU12_LGB",[-1]];
_veh addMagazineTurret ["2Rnd_GBU12_LGB_MI10",[-1]];

_veh addWeaponTurret ["Mk82BombLauncher",[-1]]; 
_veh addMagazineTurret ["2Rnd_Mk82",[-1]];
_veh addMagazineTurret ["2Rnd_Mk82_MI08",[-1]];

_veh addWeaponTurret ["rockets_230mm_GAT",[-1]]; 
_veh addMagazineTurret ["12Rnd_230mm_rockets",[-1]];
_veh addWeaponTurret ["LMG_coax",[-1]]; 
_veh addMagazineTurret ["2000Rnd_762x51_Belt",[-1]];

_veh addWeaponTurret ["autocannon_30mm",[-1]]; 
_veh addMagazineTurret ["140Rnd_30mm_MP_shells",[-1]];
_veh addMagazineTurret ["60Rnd_30mm_APFSDS_shells",[-1]];

_veh addWeaponTurret ["cannon_120mm_long",[-1]]; 
_veh addMagazineTurret ["28Rnd_120mm_APFSDS_shells",[-1]];
_veh addMagazineTurret ["14Rnd_120mm_HE_shells",[-1]];

_veh addWeaponTurret ["Twin_Cannon_20mm",[-1]]; 
_veh addMagazineTurret ["2000Rnd_20mm_shells",[-1]];

_veh addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];

_veh addWeaponTurret ["Missile_AA_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_04_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_02_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["6Rnd_Missile_AGM_02_F",[-1]];

_veh addWeaponTurret ["Rocket_04_HE_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_04_AP_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["7Rnd_Rocket_04_AP_F",[-1]];


_veh addWeaponTurret ["Bomb_04_Plane_CAS_01_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Bomb_04_F",[-1]];

_veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];

_veh addWeaponTurret ["Missile_AA_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Missile_AA_03_F",[-1]];

_veh addWeaponTurret ["Missile_AGM_01_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["4Rnd_Missile_AGM_01_F",[-1]];

_veh addWeaponTurret ["Rocket_03_HE_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_HE_F",[-1]];

_veh addWeaponTurret ["Rocket_03_AP_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["20Rnd_Rocket_03_AP_F",[-1]];

_veh addWeaponTurret ["Bomb_03_Plane_CAS_02_F",[-1]]; 
_veh addMagazineTurret ["2Rnd_Bomb_03_F",[-1]];

_veh addWeaponTurret ["HMG_127_MBT",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["HMG_127_LSV_01",[-1]]; 
_veh addMagazineTurret ["500Rnd_127x99_mag",[-1]];

_veh addWeaponTurret ["MMG_02_vehicle",[-1]]; 
_veh addMagazineTurret ["130Rnd_338_Mag",[-1]];

_veh addWeaponTurret ["gatling_20mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["4000Rnd_20mm_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["autocannon_40mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["240Rnd_40mm_GPR_Tracer_Red_shells",[-1]];
_veh addMagazineTurret ["160Rnd_40mm_APFSDS_Tracer_Red_shells",[-1]];

_veh addWeaponTurret ["cannon_105mm_VTOL_01",[-1]]; 
_veh addMagazineTurret ["40Rnd_105mm_APFSDS",[-1]];
_veh addMagazineTurret ["100Rnd_105mm_HEAT_MP",[-1]];

_veh addWeaponTurret ["gatling_30mm_VTOL_02",[-1]]; 
_veh addMagazineTurret ["250Rnd_30mm_HE_shells",[-1]];
_veh addMagazineTurret ["250Rnd_30mm_APDS_shells",[-1]];

_veh addWeaponTurret ["missiles_Jian",[-1]]; 
_veh addMagazineTurret ["4Rnd_LG_Jian",[-1]];
        _veh addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
        _veh setVehicleLock "UNLOCKED";
        _veh setDir 180;
      };

/*
      case "Broadside Bus Beta": {
        _veh =createvehicle ["CUP_C_Ikarus_Chernarus", _location, [], 0, "FORM"];
        _ripple = true;
        _veh setVehicleLock "UNLOCKED";
        _gunL1 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL1;
        _gunL1 disableAI "TARGET";
        _gunL1 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL2 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL2 ;
        _gunL2 disableAI "TARGET";
        _gunL2 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL3 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunL3;
        _gunL3 disableAI "TARGET";
        _gunL3 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunL1 attachTo [_veh,[-1.5, 2.5, 0],"kridlo"];
        _gunL1 setDir 270;
        _gunL2 attachTo [_veh,[-1.5, 0, 0],"kridlo"];
        _gunL2 setDir 270;
        _gunL3 attachTo [_veh,[-1.5, -2.5, 0],"kridlo"];
        _gunL3 setDir 270;


        _gunR1 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR1;
        _gunR1 disableAI "TARGET";
        _gunR1 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR2 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR2 ;
        _gunR2 disableAI "TARGET";
        _gunR2 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR3 =createvehicle ["CUP_O_SPG9_ChDKZ", _location, [], 0, "FORM"];
        createVehicleCrew _gunR3;
        _gunR3 disableAI "TARGET";
        _gunR3 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}] call BIS_fnc_MP;
        _gunR1 attachTo [_veh,[1.5, 2.5, 0],"kridlo"];
        _gunR1 setDir 90;
        _gunR2 attachTo [_veh,[1.5, 0, 0],"kridlo"];
        _gunR2 setDir 90;
        _gunR3 attachTo [_veh,[1.5, -2.5, 0],"kridlo"];
        _gunR3 setDir 90;
        _veh setDir 180;

        _veh addAction ["Fire Left",{
          _g1 =_this select 3 select 0;
          _g2 =_this select 3 select 1;
          _g3 =_this select 3 select 2;
          _r = _this select 3 select 3;
          [_g1,_g2,_g3,_r] spawn {

            _g1 =_this select 0;
            _g2 =_this select 1;
            _g3 =_this select 2;
            _r = _this select 3;

            _g1 fire ["CUP_Vacannon_SPG9_veh"];
            if (_r) then {
              sleep 2;
            };            
            _g2 fire ["CUP_Vacannon_SPG9_veh"];
            if (_r) then {
              sleep 2;
            };
            _g3 fire ["CUP_Vacannon_SPG9_veh"];
          };             
        },[_gunL1,_gunL2,_gunL3,_ripple],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;
    

        _veh addAction ["Fire Right",{
        _g1 =_this select 3 select 0;
        _g2 =_this select 3 select 1;
        _g3 =_this select 3 select 2;
        _g1 fire ["CUP_Vacannon_SPG9_veh"];
        _g2 fire ["CUP_Vacannon_SPG9_veh"];
        _g3 fire ["CUP_Vacannon_SPG9_veh"];               
        },[_gunR1,_gunR2,_gunR3,_ripple],1.5,true,true, "","true",15,false,""] call BIS_fnc_MP;

        _veh addAction ["Turn On Ripple",{
          _ripple = true;            
        },[_ripple],1.5,true,true, ""," !_ripple",15,false,""] call BIS_fnc_MP;

       _veh addAction ["Turn Off Ripple",{
          _ripple = false;              
        },[_ripple],1.5,true,true, "","this _ripple",15,false,""] call addAction ["Frogfoot Infinite Ammo";


      };

*/
    	default {
    		hint "default";
		};
	};
};


FNC_make_cheat_spawner ={
    params ["_sign"];
_sign addAction ["Frogfoot Infinite Ammo", {
	_group = createGroup east;
	[getMarkerPos "Veh_Spawn_Point","Frogfoot", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Littlebird AH Infinite Ammo", {
	_group = createGroup east;
	[getMarkerPos "Veh_Spawn_Point","Littlebird AH", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];


_sign addAction ["WWI Fighter", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","WWI Fighter", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["WWI Fighter++", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","WWI Fighter++", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Goodbye Kitty", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Goodbye Kitty", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Joust", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Joust", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];


_sign addAction ["Goodbye Kitty Manned", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Goodbye Kitty Manned", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Party Bus", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Party Bus", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Broadside Bus", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Broadside Bus", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Super Combat Cessna", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Super Combat Cessna", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Super Combat Bird", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Super Combat Bird", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Super APC", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Super APC", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];


_sign addAction ["Super Combat Frog", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Super Combat Frog", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Super Combat WWI", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Super Combat WWI", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];

_sign addAction ["Give Me Tracer Vision", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  [_caller, [1,0,0,1],-1, 1,-1,-1,true] call hyp_fnc_traceFire;
  _caller addAction["Clear Lines", {
  {
       [_x] call hyp_fnc_traceFireClear;
   } forEach hyp_var_tracer_tracedUnits;
}];
}];


_sign addAction ["Make Me Immortal", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _caller allowDamage false;
}];


};






/*_sign addAction ["Broadside Bus Beta", {
  _group = createGroup east;
  [getMarkerPos "Veh_Spawn_Point","Broadside Bus Beta", _group, _this select 1] call FNC_spawnCustomUnit_Veh_OPF_Air;
}];
*/
