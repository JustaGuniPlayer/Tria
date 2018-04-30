# Ground Weapons Main Function
# Made by: KubbyDev

tag @a remove Recoil1
tag @a remove Recoil2

# Slot and OffHand detections
execute as @a store result score @s ActiveSlot run data get entity @s SelectedItemSlot 1
tag @a remove UseOffHand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add UseOffHand

# Player actions
tag @a[scores={ActiveSlot=0,UseCarrot=1..,InVehicle=0,1stWeapon=1..,1stReloading=0,1stCdShoot=0}] add ShootInput1
tag @a[scores={ActiveSlot=1,UseCarrot=1..,InVehicle=0,2ndWeapon=1..,2ndReloading=0,2ndCdShoot=0}] add ShootInput2
execute as @a[tag=UseOffHand,scores={ActiveSlot=0,InVehicle=0,1stReloading=0,1stAmo=1..,1stWeapon=1..}] unless score @s 1stAmoLoaded = @s 1stLoadCapacity run tag @s add ReloadInput1
execute as @a[tag=UseOffHand,scores={ActiveSlot=1,InVehicle=0,2ndReloading=0,2ndAmo=1..,2ndWeapon=1..}] unless score @s 2ndAmoLoaded = @s 2ndLoadCapacity run tag @s add ReloadInput2
#tag @a[score_Drop_min=1] add DropInput1

# Start Reload
execute as @a[tag=ReloadInput1] run scoreboard players operation @s 1stReloading = @s 1stReloadTime
execute as @a[tag=ReloadInput2] run scoreboard players operation @s 2ndReloading = @s 2ndReloadTime
execute as @a[tag=ShootInput1,scores={1stAmoLoaded=0,1stAmo=1..}] run scoreboard players operation @s 1stReloading = @s 1stReloadTime
execute as @a[tag=ShootInput2,scores={2ndAmoLoaded=0,2ndAmo=1..}] run scoreboard players operation @s 2ndReloading = @s 2ndReloadTime

# Shoot
scoreboard players remove @a[scores={1stCdShoot=1..,ActiveSlot=0}] 1stCdShoot 1
scoreboard players remove @a[scores={2ndCdShoot=1..,ActiveSlot=1}] 2ndCdShoot 1
execute if entity @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] run function tria:weapons/groundweapons/shoot1
execute if entity @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] run function tria:weapons/groundweapons/shoot2

# Reload
scoreboard players remove @a[scores={1stReloading=1..,ActiveSlot=0}] 1stReloading 1
scoreboard players remove @a[scores={2ndReloading=1..,ActiveSlot=1}] 2ndReloading 1
execute as @a[scores={1stReloading=1,ActiveSlot=0}] run function tria:weapons/groundweapons/reload1
execute as @a[scores={2ndReloading=1,ActiveSlot=1}] run function tria:weapons/groundweapons/reload2

tag @a remove ShootInput1
tag @a remove ShootInput2
tag @a remove ReloadInput1
tag @a remove ReloadInput2

# Display + Items
execute if entity @e[tag=Data,tag=FRA] run function tria:weapons/groundweapons/displayanditemsfr
execute if entity @e[tag=Data,tag=ENG] run function tria:weapons/groundweapons/displayanditemsen

# ------------------------------------------------
# How to use it:




# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
#ActiveSlot: Stores the selected slot (from 0 to 8)
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
#1stUnaccuracy: The unaccuracy of the main weapon
#2ndUnaccuracy: The unaccuracy of the secondary weapon
#WeaponDamage: The damage dealt by the current weapon
#HeadDamage: The damage dealt by the current weapon in the head
#Unaccuracy: The Unaccuracy of the current weapon
#1stRecoil: The recoil of the main weapon
#2ndRecoil: The recoil of the secondary weapon





















