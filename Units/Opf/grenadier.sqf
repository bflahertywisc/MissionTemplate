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
_this forceAddUniform "CUP_U_O_CHDKZ_Kam_05";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToUniform "CUP_30Rnd_545x39_AK_M";};
_this addVest "CUP_V_O_Ins_Carrier_Rig";
for "_i" from 1 to 10 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 6 do {_this addItemToVest "CUP_1Rnd_HE_GP25_M";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_1Rnd_SMOKE_GP25_M";};
_this addItemToVest "CUP_1Rnd_SmokeRed_GP25_M";
_this addGoggles "G_Balaclava_oli";

comment "Add weapons";
_this addWeapon "CUP_arifle_AK74_GL";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Mavros";
_this setSpeaker "cup_d_male01_ru";
