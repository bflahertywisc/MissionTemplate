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
_this forceAddUniform "CUP_U_O_CHDKZ_Kam_04";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "CUP_HandGrenade_RGD5";
_this addItemToUniform "CUP_30Rnd_545x39_AK_M";
_this addVest "V_TacVest_camo";
for "_i" from 1 to 2 do {_this addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_SmokeRed_GP25_M";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_1Rnd_SMOKE_GP25_M";};
for "_i" from 1 to 4 do {_this addItemToVest "CUP_1Rnd_HE_GP25_M";};
_this addBackpack "B_Carryall_khk";
for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "CUP_IlumFlareWhite_GP25_M";};
_this addHeadgear "CUP_H_ChDKZ_Beanie";

comment "Add weapons";
_this addWeapon "CUP_arifle_AK74_GL";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "GreekHead_A3_06";
_this setSpeaker "cup_d_male04_ru";
