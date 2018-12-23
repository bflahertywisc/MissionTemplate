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
_this forceAddUniform "CUP_U_O_CHDKZ_Kam_01";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "CUP_30Rnd_762x39_AK47_M";
_this addVest "CUP_V_O_Ins_Carrier_Rig";
for "_i" from 1 to 10 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 3 do {_this addItemToVest "ACE_morphine";};
for "_i" from 1 to 5 do {_this addItemToVest "CUP_30Rnd_762x39_AK47_M";};
_this addBackpack "B_Carryall_oli";
_this addItemToBackpack "ACE_morphine";
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_SMAW_HEDP_M";};
_this addItemToBackpack "CUP_SMAW_Spotting";
_this addHeadgear "CUP_H_ChDKZ_Beanie";

comment "Add weapons";
_this addWeapon "CUP_arifle_AKM";
_this addWeapon "CUP_launch_Mk153Mod0";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "GreekHead_A3_04";
_this setSpeaker "cup_d_male03_ru";
