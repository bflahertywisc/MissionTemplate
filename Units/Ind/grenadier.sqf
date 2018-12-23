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
_this forceAddUniform "CUP_U_I_GUE_Flecktarn";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 9 do {_this addItemToUniform "ACE_fieldDressing";};
_this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToUniform "CUP_30Rnd_545x39_AK_M";};
_this addVest "CUP_V_I_Carrier_Belt";
for "_i" from 1 to 3 do {_this addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 7 do {_this addItemToVest "CUP_1Rnd_HE_GP25_M";};
_this addGoggles "G_Bandanna_oli";

comment "Add weapons";
_this addWeapon "CUP_arifle_AK74_GL";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Default";
_this setSpeaker "cup_d_male03_cz";
