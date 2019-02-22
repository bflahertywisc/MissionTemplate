
_box = _this select 0;

_box addAction ["Check Hours", 
{ 
hint format ['Hours Remaining %1', ManHours];
}  
];

_box addAction ["Take Small Bunker (5)", 
{ 
[_this select 1, 0, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-5;
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>5",15,false,""]; 
_box addAction ["Take Tower Bunker (7)", 
{ 
[_this select 1, 22, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-7; 
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>7",15,false,""]; 
_box addAction ["Take Large Bunker (15)", 
{ 
[_this select 1, 8, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-15;
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>15",15,false,""]; 
_box addAction ["H-Barrier 3 (4)", 
{ 
[_this select 1, 14, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-4; 
publicVariable "ManHours";
hint format ['Hours Remaining %1',publicVariable  ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>4",15,false,""]; 
_box addAction ["H-Barrier 5 (7)", 
{ 
[_this select 1, 15, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-7; 
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>7",15,false,""]; 
_box addAction ["Long Sandbag Wall (3)", 
{ 
[_this select 1, 17, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-3; 
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>3",15,false,""]; 
_box addAction ["Short Sandbag Wall (1)", 
{ 
[_this select 1, 19, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-1;
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>1",15,false,""]; 
_box addAction ["Razorwire (2)", 
{ 
[_this select 1, 20, 1] call plank_deploy_fnc_increaseFortCount; 
ManHours = ManHours-2; 
publicVariable "ManHours";
hint format ['Hours Remaining %1', ManHours]; 
} 
,nil,1.5,true,false, "","ManHours>2",15,false,""]; 

