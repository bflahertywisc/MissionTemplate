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
_this forceAddUniform "CUP_U_O_CHDKZ_Kam_07";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_this addItemToUniform "CUP_30Rnd_545x39_AK_M";};
_this addVest "CUP_V_O_Ins_Carrier_Rig_Com";
for "_i" from 1 to 10 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_HandGrenade_RGD5";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
_this addItemToVest "CUP_30Rnd_545x39_AK_M";
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_HE_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_SmokeRed_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_SmokeGreen_GP25_M";};
_this addHeadgear "CUP_H_RUS_Beret_Spetsnaz";

comment "Add weapons";
_this addWeapon "CUP_arifle_AK74_GL";
_this addWeapon "CUP_hgun_Makarov";
_this addWeapon "Laserdesignator";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "GreekHead_A3_02";
_this setSpeaker "cup_d_male03_ru";
