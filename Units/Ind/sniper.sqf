comment "Exported from Arsenal by YourAdHere";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "CUP_U_I_Ghillie_Top";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 5 do {_this addItemToUniform "CUP_10Rnd_762x54_SVD_M";};
_this addVest "CUP_V_I_Carrier_Belt";
for "_i" from 1 to 10 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_HandGrenade_RGD5";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
_this addItemToVest "Laserbatteries";
for "_i" from 1 to 5 do {_this addItemToVest "CUP_10Rnd_762x54_SVD_M";};
_this addGoggles "G_Balaclava_blk";

comment "Add weapons";
_this addWeapon "CUP_srifle_SVD";
_this addPrimaryWeaponItem "CUP_optic_PSO_1";
_this addWeapon "Laserdesignator";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Default";
_this setSpeaker "cup_d_male04_cz";
