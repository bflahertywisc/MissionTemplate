fnc_classLookup = {
params ["_class","_side"];


//Nato



switch (_class) do {
    case 'C_man_polo_3_F';
    case 'C_man_shorts_4_F';
    case 'C_man_polo_1_F';
    case 'C_man_p_fugitive_F';
    case 'C_Man_casual_1_F';
    case "B_Survivor_F": {
    	"survivor"
    };
    case 'O_Soldier_AR_F';
    case 'CUP_O_TK_Soldier_MG';
    case 'CUP_O_TK_SpecOps_MG';
    case 'CUP_B_US_Soldier_AR';
    case "B_HeavyGunner_F";
    case "B_soldier_AR_F": {
    	"ar"
    };
    case 'O_Soldier_TL_F';
    case 'O_support_GMG_F';
    case 'O_officer_F';
    case 'CUP_O_TK_Officer';
    case 'CUP_O_TK_Commander';
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
    case 'CUP_B_US_Soldier_LAT';
    case 'CUP_O_INS_Soldier_AT';
    case 'CUP_O_TK_Soldier_HAT';
    case 'CUP_O_TK_Soldier_GL';
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
    case 'CUP_O_INS_Soldier';
    case 'CUP_O_INS_Soldier_AK74';
    case 'CUP_O_RU_Soldier';
    case 'I_soldier_F';
    case 'CUP_O_TK_Engineer';
    case 'CUP_O_TK_Soldier_Backpack';
    case 'CUP_O_TK_Soldier_AAT';
    case 'CUP_O_TK_Soldier_AMG';
    case 'CUP_O_TK_Crew';
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
    case "B_soldier_AAT_F";
    case "B_soldier_AAA_F": {
    	"rifle"
    };
    case 'CUP_B_US_Soldier_Marksman';
    case 'CUP_O_TK_Sniper';   
    case 'B_ghillie_ard_F';
    case 'CUP_O_TK_Spotter';
    case 'CUP_O_TK_Sniper_KSVK';
    case "B_soldier_M_F";
    case 'O_soldier_M_F';
    case 'CUP_B_BAF_Sniper_AS50_TWS_MTP';
	case 'B_Sharpshooter_F';
	case "B_sniper_F":
    {
    	"marksman"
    };
    case 'O_medic_F';
    case 'CUP_B_US_Medic';
    case 'CUP_O_TK_Medic';
	case "B_medic_F";
	case "B_recon_medic_F":
     {
    	"medic"
    };
    case 'O_recon_F';
    case "B_recon_exp_F";
    case "B_recon_JTAC_F";    
    case "B_recon_F";
    case 'CUP_O_TK_SpecOps';
    case 'CUP_O_TK_Soldier_FNFAL_Night':
    {
        "reconRifleman"
    };
    case 'O_sniper_F';
    case "B_recon_M_F";
    case "B_Recon_Sharpshooter_F";
    case 'CUP_O_TK_Sniper_SVD_Night':
    {
        "sniperNight"
    };
    case 'CUP_O_TK_INS_Mechanic';
    case 'O_engineer_F':
    {
        "engineer"
    };
    case 'CUP_O_TK_INS_Bomber';
    case 'O_soldier_exp_F':
    {
        "demoMan"
    };
    case 'B_soldier_UAV_F';
    case 'I_soldier_UAV_F';
    case 'O_soldier_UAV_F':
    {
        "uavOperator"
    };
    case 'C_scientist_F':
    {
        "scientist"
    };
    case 'CUP_O_TK_INS_Sniper';
    case 'CUP_B_BAF_Soldier_scout_MTP':
    {
        "MarksmanMilitia"
    };
    case 'CUP_O_TK_INS_Commander';
    case 'CUP_O_TK_INS_Soldier_GL';
    case 'CUP_O_TK_INS_Soldier_TL';
    case 'CUP_B_BAF_Soldier_TL_MTP':
    {
        "FTLMilitia"
    };
    case 'CUP_O_TK_INS_Guerilla_Medic';
    case 'CUP_B_BAF_Medic_MTP':
    {
        "MedicMilitia"
    };
    case 'CUP_O_TK_INS_Soldier_AA';
    case 'CUP_O_TK_INS_Soldier_AT';
    case 'CUP_B_BAF_Soldier_AT_MTP':
    {
        "ATMilitia"
    };
    case 'CUP_O_TK_INS_Soldier_MG';
    case 'CUP_O_TK_INS_Soldier_AR';
    case 'CUP_B_BAF_Soldier_AR_MTP':
    {
        "ARMilitia"
    };
    case 'CUP_O_TK_INS_Soldier_AAT';
    case 'CUP_O_TK_INS_Soldier_Enfield';
    case 'CUP_O_TK_INS_Soldier_FNFAL';
    case 'CUP_O_TK_INS_Soldier':
    {
        "rifleMilitia"
    };

    default {
   	    diag_log format ["New %1 Definition needed",_side];	
    	diag_log format ["case '%1';",_class];	
	    "rifle"
    };
};

};