fnc_classLookup = {
params ["_class"];


//Nato



switch (_class) do {

//Nato
    case "B_Survivor_F": {
    	"survivor"
    };
    case "B_soldier_AR_F": {
    	"ar"
    };
    default {
	    diag_log format ["Undefined Class: %1",_class];	
	    "rifle"
    };
};

};