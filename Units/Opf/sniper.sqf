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
_this forceAddUniform "U_I_GhillieSuit";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 10 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {_this addItemToUniform "CUP_10Rnd_762x54_SVD_M";};
_this addVest "CUP_V_O_Ins_Carrier_Rig";
for "_i" from 1 to 2 do {_this addItemToVest "CUP_10Rnd_762x54_SVD_M";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_HandGrenade_RGD5";};
_this addItemToVest "SmokeShell";
_this addItemToVest "SmokeShellOrange";
_this addGoggles "G_Balaclava_oli";

comment "Add weapons";
_this addWeapon "CUP_srifle_SVD";
_this addPrimaryWeaponItem "CUP_optic_PSO_1";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "GreekHead_A3_05";
_this setSpeaker "cup_d_male05_ru";
