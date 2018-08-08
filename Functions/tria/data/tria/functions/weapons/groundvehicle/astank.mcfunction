#Name: As Tank
#Path: tria:weapons/groundvehicle/astank

#System: Vehicle / Ground / Tank
#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - onCarrot (score minecraft.used:minecraft.carrot_on_a_stick)
# - useNetherStar (score minecraft.used:minecraft.nether_star)
# - HotbarState (score dummy)
# - Tank_CDShot (score dummy)
# - Tank_CDShield (score dummy)

#Input:
# - tank (tag)

#Output:
# - tank_active_shield (tag)
# - tank_cooldown_shot (tag)

#Code:
	#Initialize the tank
execute if entity @e[tag=tank, tag=!tank_init, limit=1] run function tria:weapons/groundvehicle/tank/init

	#Tag the tank rider
execute as @e[tag=tank] at @s positioned ~ ~1 ~ run tag @e[limit=1, sort=nearest, distance=..0.5] add tank_rider

	#Setting the tank hotbar
scoreboard players set @e[tag=tank_rider] HotbarState 1

	#Checking missile shot & shield activation
execute as @e[tag=tank_rider, scores={onCarrot=1..}, nbt={SelectedItem:{id:carrot_on_a_stick, Count:1, tag:{display:{Name:"[\"\\u00a76Shot !\"]"}}}}] run function tria:weapons/groundvehicle/tank/shot
execute as @e[tag=tank_rider, scores={useNetherStar=1..}, nbt={SelectedItem:{id:nether_star, Count:1, tag:{display:{Name:"[\"\\u00a72Active Shield\"]"}}}}] as @e[tag=tank,limit=1,sort=nearest] at @s run function tria:weapons/groundvehicle/tank/shield

execute as @e[tag=tank_rider, scores={onCarrot=1..}, nbt={SelectedItem:{id:carrot_on_a_stick, Count:1, tag:{display:{Name:"[\"\\u00a76Shot !\"]"}}}}] run say Shot !
execute as @e[tag=tank_rider, scores={useNetherStar=1..}, nbt={SelectedItem:{id:nether_star, Count:1, tag:{display:{Name:"[\"\\u00a72Active Shield\"]"}}}}] as @e[tag=tank,limit=1,sort=nearest] at @s run say Shield !

	#(Running & Checking cool-down) shield
execute if entity @e[tag=tank_shield_active, limit=1] run function tria:weapons/groundvehicle/tank/run_shield

scoreboard players remove @e[tag=tank_rider, tag=tank_cooldown_shield] Tank_CDShield 1
tag @e[tag=tank, tag=tank_cooldown_shield, scores={Tank_CDShield = 0}] remove tank_cooldown_shield

	#Checking shot cool-down
scoreboard players remove @e[tag=tank_rider, tag=tank_cooldown_shot] Tank_CDShot 1
tag @e[tag=tank, tag=tank_cooldown_shot, scores={Tank_CDShot = 0}] remove tank_cooldown_shot

	#Removing the temporary tags
tag @e[tag=tank_rider] remove tank_rider