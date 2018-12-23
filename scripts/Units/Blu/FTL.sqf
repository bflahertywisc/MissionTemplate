
comment "Exported from Arsenal by Bryan";

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
_this forceAddUniform "U_C_Man_casual_2_F";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "Chemlight_blue";
_this addItemToUniform "CUP_30Rnd_556x45_Stanag";
_this addVest "V_PlateCarrier2_blk";
_this addItemToVest "Chemlight_blue";
for "_i" from 1 to 7 do {_this addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_HE_M203";};
for "_i" from 1 to 3 do {_this addItemToVest "CUP_1Rnd_Smoke_M203";};
_this addItemToVest "CUP_1Rnd_SmokeRed_M203";
_this addItemToVest "CUP_1Rnd_SmokeGreen_M203";
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_this addItemToVest "CUP_HandGrenade_M67";};
_this addBackpack "CUP_B_AlicePack_Khaki";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
_this addItemToBackpack "RyanZombiesAntiVirusCure_Item";
for "_i" from 1 to 2 do {_this addItemToBackpack "RyanZombiesAntiVirusTemporary_Item";};
for "_i" from 1 to 10 do {_this addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 8 do {_this addItemToBackpack "CUP_1Rnd_HE_M203";};
for "_i" from 1 to 5 do {_this addItemToBackpack "CUP_HandGrenade_L109A1_HE";};
_this addHeadgear "CUP_H_CDF_H_PASGT_UN";

comment "Add weapons";
_this addWeapon "CUP_arifle_M16A4_GL";
_this addPrimaryWeaponItem "CUP_acc_Flashlight";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Sturrock";
_this setSpeaker "male04eng";