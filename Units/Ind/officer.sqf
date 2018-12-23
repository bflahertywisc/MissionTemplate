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
for "_i" from 1 to 2 do {_this addItemToUniform "CUP_30Rnd_545x39_AK_M";};
_this addItemToUniform "Laserbatteries";
_this addVest "CUP_V_I_Carrier_Belt";
for "_i" from 1 to 3 do {_this addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 6 do {_this addItemToVest "CUP_1Rnd_HE_GP25_M";};
_this addBackpack "B_AssaultPack_khk";
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_1Rnd_SmokeGreen_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_1Rnd_SmokeYellow_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_1Rnd_SMOKE_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_1Rnd_SmokeRed_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_1Rnd_HE_GP25_M";};
for "_i" from 1 to 3 do {_this addItemToBackpack "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";};
for "_i" from 1 to 2 do {_this addItemToBackpack "CUP_30Rnd_545x39_AK_M";};
_this addHeadgear "CUP_H_SLA_Beret";
_this addGoggles "G_Bandanna_beast";

comment "Add weapons";
_this addWeapon "CUP_arifle_AK74_GL";
_this addWeapon "Laserdesignator";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Default";
_this setSpeaker "cup_d_male05_cz";