_unit = _this select 0;
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_C_Man_casual_2_F";
_unit addItemToUniform "FirstAidKit";
_unit addItemToUniform "Chemlight_blue";
for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_30Rnd_556x45_Stanag";};
_unit addVest "V_PlateCarrier2_blk";
_unit addItemToVest "Chemlight_blue";
for "_i" from 1 to 7 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
_unit addBackpack "B_AssaultPack_blk";
_unit addHeadgear "CUP_H_CDF_H_PASGT_UN";

comment "Add weapons";
_unit addWeapon "CUP_arifle_M16A2";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

comment "Set identity";
_unit setFace "WhiteHead_12";
_unit setSpeaker "male01eng";