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
_this forceAddUniform "CUP_U_I_Leader_01";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 10 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToUniform "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 3 do {_this addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
_this addVest "CUP_V_I_Guerilla_Jacket";
_this addHeadgear "CUP_H_NAPA_Fedora";
_this addGoggles "G_Balaclava_blk";

comment "Add weapons";
_this addWeapon "CUP_arifle_AKS74U";
_this addWeapon "CUP_hgun_Makarov";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "Default";
_this setSpeaker "cup_d_male03_cz";
