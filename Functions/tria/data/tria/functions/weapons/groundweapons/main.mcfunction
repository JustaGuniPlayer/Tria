# Ground Weapons Main Function
# Made by: KubbyDev

# Only for players

tag @a remove Recoil1
tag @a remove Recoil2

# Slot and OffHand detections
execute as @a store result score @s Var9 run data get entity @s SelectedItemSlot 1
tag @a remove UseOffHand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add UseOffHand

# Player actions
execute if entity @a[scores={Var9=0..1,UseCarrot=1..,InVehicle=0},tag=!LockWeapons] run function tria:weapons/groundweapons/shootinput
execute if entity @a[scores={Var9=0..1,InVehicle=0},tag=UseOffHand,tag=!LockWeapons] run function tria:weapons/groundweapons/reloadinput
execute if entity @a[scores={Var9=0..1,Drop=1..,InVehicle=0},tag=!LockWeapons] run function tria:weapons/groundweapons/dropinput

# Firerate
scoreboard players remove @a[scores={1stCdShoot=1..},nbt={SelectedItemSlot:0}] 1stCdShoot 1
scoreboard players remove @a[scores={2ndCdShoot=1..},nbt={SelectedItemSlot:1}] 2ndCdShoot 1

# Reload
scoreboard players remove @a[scores={1stReloading=1..},nbt={SelectedItemSlot:0},tag=!LockWeapons] 1stReloading 1
scoreboard players remove @a[scores={2ndReloading=1..},nbt={SelectedItemSlot:1},tag=!LockWeapons] 2ndReloading 1
execute as @a[scores={1stReloading=1},nbt={SelectedItemSlot:0},tag=!LockWeapons] run function tria:weapons/groundweapons/reloading/reload1
execute as @a[scores={2ndReloading=1},nbt={SelectedItemSlot:1},tag=!LockWeapons] run function tria:weapons/groundweapons/reloading/reload2

# Grenades
execute as @a[scores={UseCarrot=1..,InVehicle=0},nbt={SelectedItemSlot:7},tag=!LockWeapons] run function tria:weapons/grenades/sticky/throw

# Scope
effect clear @a[scores={Sneak=0,ID=1..4}] slowness
effect give @a[scores={Sneak=1},nbt={SelectedItemSlot:0},tag=1stStrongScope] slowness 1 255 true
effect give @a[scores={Sneak=1},nbt={SelectedItemSlot:1},tag=2ndStrongScope] slowness 1 255 true

# ------------------------------------------------
# How to use it:

# A player must have an ID from 1 to 4 to use this system. And he must have the HotbarState score set to 1

# To give a player a weapons, execute this on him:
# /function tria:weapons/groundweapons/give/(weapon name)

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
#UseCarrot (minecraft.used:minecraft.carrot_on_a_stick): Set to 1 for 1 tick when the player uses a carrot_on_a_stick
#Drop (minecraft.custom:minecraft.drop): Set to 1 for 1 tick when the player drops an item
#1stWeapon: The ID of the main weapon of the player
#2ndWeapon: The ID of the secondary weapon of the player
#1stAmo: The supply of amo for the main weapon
#2ndAmo: The supply of amo for the secondary weapon
#1stAmoLoaded: The amo loaded on the main weapon
#2ndAmoLoaded: The amo loaded on the secondary weapon
#1stLoadCapacity: The size of the loader of the main weapon
#2ndLoadCapacity: The size of the loader of the secondary weapon
#1stReloading: The time left to reload the main weapon
#2ndReloading: The time left to reload the secondary weapon
#1stReloadTime: The time to reload the main weapon
#2ndReloadTime: The time to reload the secondary weapon
#1stCdShoot: The time left to shoot with the main weapon
#2ndCdShoot: The time left to shoot with the secondary weapon
#1stFirerate: The time between 2 shots with the main weapon
#2ndFirerate: The time between 2 shots with the secondary weapon
#1stWeaponDamage: The damage dealt by the main weapon
#2ndWeaponDamage: The damage dealt by the secondary weapon
#1stHeadDamage: The damage dealt by the main weapon in the head
#2ndHeadDamage: The damage dealt by the secondary weapon in the head
#1stInaccuracy: The inaccuracy of the main weapon
#2ndInaccuracy: The inaccuracy of the secondary weapon
#WeaponDamage: The damage dealt by the current weapon
#HeadDamage: The damage dealt by the current weapon in the head
#Inaccuracy: The Inaccuracy of the current weapon
#1stRecoil: The recoil of the main weapon
#2ndRecoil: The recoil of the secondary weapon





















