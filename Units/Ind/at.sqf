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
_this forceAddUniform "CUP_U_I_GUE_Woodland1";
_this addItemToUniform "FirstAidKit";
_this addVest "CUP_V_I_Carrier_Belt";
for "_i" from 1 to 10 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToVest "ACE_morphine";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_30Rnd_762x39_AK47_M";};
_this addBackpack "CUP_B_RPG_Backpack";
for "_i" from 1 to 2 do {_this addItemToBackpack "CUP_PG7VL_M";};
_this addGoggles "G_Bandanna_oli";

comment "Add weapons";
_this addWeapon "CUP_arifle_AKM";
_this addWeapon "CUP_launch_RPG7V";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Default";
_this setSpeaker "cup_d_male03_cz";
