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
_this forceAddUniform "CUP_U_O_CHDKZ_Kam_02";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 10 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
_this addItemToUniform "CUP_HandGrenade_RGD5";
_this addItemToUniform "SmokeShell";
_this addVest "V_TacVest_oli";
_this addItemToVest "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_this addItemToVest "CUP_HandGrenade_RGD5";
_this addItemToVest "SmokeShell";
_this addItemToVest "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_this addBackpack "CUP_B_INS_Backpack_AR";
for "_i" from 1 to 6 do {_this addItemToBackpack "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";};
_this addHeadgear "CUP_H_ChDKZ_Beanie";

comment "Add weapons";
_this addWeapon "CUP_arifle_RPK74";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "GreekHead_A3_06";
_this setSpeaker "cup_d_male02_ru";
