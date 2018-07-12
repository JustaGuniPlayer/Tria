#Name: As Ground Vehicle
#Path: tria:weapons/groundvehicle/asgroundvehicle

#System: Vehicle / Ground
#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - horseWalked (score minecraft.custom:minecraft.horse_one_cm)
# - speed (Import File)

#Input:
# - minSpeed (score dummy)
# - maxSpeed (score dummy)
# - acceleration (score dummy)

#Output: /

#Code:
	#Get vehicle rider
execute as @e[tag=g_vehicle] at @s positioned ~ ~1 ~ run tag @e[distance=..0.5, limit=1, sort=nearest] add vehicle_rider
tag @e[tag=vehicle_rider, scores={horseWalked=0}] add vehicle_rider_noMoved

	#Get Current Speed
execute as @e[tag=g_vehicle] store result score @s Var1 run data get entity @s Attributes[2].Base 1000

	#Accelerate if has moved
execute as @e[tag=g_vehicle] unless score @s Var1 >= @s maxSpeed unless entity @e[tag=vehicle_rider_noMoved, distance=..1.5] run scoreboard players operation @s Var1 += @s acceleration
execute as @e[tag=g_vehicle] if score @s Var1 > @s maxSpeed run scoreboard players operation @s Var1 = @s maxSpeed

	#Stop if has not moved
execute if score vehicle_reset Data matches 10.. as @e[tag=g_vehicle] at @s positioned ~ ~1 ~ if entity @e[distance=..0.5, tag=vehicle_rider_noMoved] run scoreboard players operation @s Var1 = @s minSpeed

	#Store new speed
execute as @e[tag=g_vehicle] store result entity @s Attributes[2].Base double 0.001 run scoreboard players get @s Var1

scoreboard players set @e[tag=vehicle_rider] horseWalked 0

	#Bidouillage de merde parce que sinon ça bugge -> Ça bugge toujours mais de manière acceptable
scoreboard players add vehicle_reset Data 1
execute if score vehicle_reset Data matches 11.. run scoreboard players set vehicle_reset Data 1

	#Reset les scores
tag @e[tag=vehicle_rider] remove vehicle_rider
tag @e[tag=vehicle_rider_noMoved] remove vehicle_rider_noMoved
####################################################################################################################################################
# Tags:
#	- g_vehicle: set the horse as a ground vehicle, so it will be used as a vehicle
#
# Scores:
#	- minSpeed: The minimal speed of the vehicle
#	- maxSpeed: The maximal speed of the vehicle
#	- acceleration mp3: The amount of speed that will be added for the acceleration
#	- Var1: the current speed of the vehicle; Also used for modifying and reassigning this speed
