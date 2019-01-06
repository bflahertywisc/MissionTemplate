fnc_classLookup = {
params ["_class","_side"];


//Nato



switch (_class) do {


    case "B_Survivor_F": {
    	"survivor"
    };
    case 'CUP_O_TK_SpecOps_MG';
    case 'CUP_B_US_Soldier_AR';
    case "B_HeavyGunner_F";
    case "B_soldier_AR_F": {
    	"ar"
    };
    case 'CUP_O_TK_Soldier_SL';
    case 'CUP_O_TK_SpecOps_TL';
    case 'O_Soldier_SL_F';
    case 'CUP_B_US_Soldier_GL';
    case 'CUP_B_US_Soldier_TL';
    case 'CUP_B_US_Soldier_SL';
    case "B_Soldier_SL_F";
    case "B_recon_TL_F";
    case "B_recon_TL_F";
    case "B_Soldier_GL_F";
    case "B_Soldier_TL_F": {
    	"ftl"
    };
    case 'CUP_O_TK_Soldier_LAT';
    case 'CUP_O_TK_Soldier_AT';
    case 'CUP_O_TK_Soldier_AA';
	case 'O_Soldier_LAT_F';
    case 'CUP_B_US_Soldier_AT';
    case "B_recon_LAT_F";
    case "B_soldier_LAT_F";
    case "B_soldier_AT_F";
    case "B_soldier_AA_F": {
    	"at"
    };
    case 'CUP_O_TK_Crew';
    case 'CUP_O_TK_SpecOps';
    case 'CUP_O_TK_Soldier';
    case 'B_crew_F';
    case 'B_Fighter_Pilot_F';
    case 'B_Helipilot_F';
    case 'O_Soldier_A_F';
    case 'O_Soldier_F';
    case 'O_Soldier_A_F';
    case 'CUP_B_US_Soldier_AAR';
    case 'CUP_B_BAF_Spotter_L85TWS_MTP';
    case "B_soldier_AAR_F";
    case "B_spotter_F";
	case "B_Soldier_A_F";
	case "B_Soldier_F";
    case "B_recon_exp_F";
    case "B_recon_JTAC_F";
	case "B_recon_F";
    case "B_soldier_AAT_F";
    case "B_soldier_AAA_F": {
    	"rifle"
    };
    case 'B_ghillie_ard_F';
    case 'CUP_O_TK_Spotter';
    case 'CUP_O_TK_Sniper_KSVK';
    case "B_soldier_M_F";
    case 'O_soldier_M_F';
    case 'CUP_B_BAF_Sniper_AS50_TWS_MTP';
	case 'B_Sharpshooter_F';
    case "B_Recon_Sharpshooter_F";
	case "B_sniper_F";
    case "B_recon_M_F":
    {
    	"marksman"
    };
	case "B_medic_F";
	case "B_recon_medic_F":
     {
    	"medic"
    };
    default {
   	    diag_log format ["New %1 Definition needed",_side];	
    	diag_log format ["case '%1';",_class];	
	    "rifle"
    };
};

};