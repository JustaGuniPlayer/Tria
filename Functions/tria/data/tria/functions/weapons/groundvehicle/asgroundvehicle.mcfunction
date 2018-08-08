#Name: As Ground Vehicle
#Path: tria:weapons/groundvehicle/asgroundvehicle

#System: Vehicle / Ground
#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - LocX (score dummy)
# - LocZ (score dummy)
# - speed (Import File)
# - temporary (Import File)

#Input:
# - minSpeed (score dummy)
# - maxSpeed (score dummy)
# - acceleration (score dummy)
# - deceleration (score dummy)

#Output: /

#Code:
	#Get Position
execute as @a[tag=g_vehicle] at @s store result score @s Var2 run data get entity @s Pos[0] 1000
execute as @a[tag=g_vehicle] at @s store result score @s Var3 run data get entity @s Pos[2] 1000

	#Movement detection
execute as @a[tag=g_vehicle] unless score @s Var2 = @s LocX positioned ~ ~-1 ~ run tag @s add vehicle_accelerate
execute as @a[tag=g_vehicle] unless score @s Var3 = @s LocZ positioned ~ ~-1 ~ run tag @s add vehicle_accelerate

	#Debug
execute as @a[tag=g_vehicle] unless score @s Var2 = @s LocX run say Move X
execute as @a[tag=g_vehicle] unless score @s Var3 = @s LocZ run say Move Z

	#Get Current Speed
execute as @e[tag=g_vehicle] store result score @s Var1 run data get entity @s Attributes[2].Base 1000

	#Accelerate if has moved
execute as @e[tag=vehicle_accelerate] run scoreboard players operation @s Var1 += @s acceleration

	#Decelerate if has not moved + Cute little particles :)
execute as @e[tag=g_vehicle, tag=!vehicle_accelerate, limit=1, sort=nearest] at @s unless score @s Var1 <= @s minSpeed run particle minecraft:smoke ^ ^ ^-1.5 0 2 0 0.1 100
execute as @e[tag=g_vehicle, tag=!vehicle_accelerate] run scoreboard players operation @s Var1 -= @s deceleration

	#Check the minimal and maximal speed exceed
execute as @e[tag=g_vehicle] if score @s Var1 > @s maxSpeed run scoreboard players operation @s Var1 = @s maxSpeed
execute as @e[tag=g_vehicle] if score @s Var1 < @s minSpeed run scoreboard players operation @s Var1 = @s minSpeed

	#Store values	
execute as @e[tag=g_vehicle] store result entity @s Attributes[2].Base double 0.001 run scoreboard players get @s Var1
execute as @a[tag=g_vehicle] store result score @s LocX run scoreboard players get @s Var2
execute as @a[tag=g_vehicle] store result score @s LocZ run scoreboard players get @s Var3

	#Reset scores
tag @e[tag=vehicle_accelerate] remove vehicle_accelerate
####################################################################################################################################################
# Tags:
#	- g_vehicle: Recognize the entity as a ground vehicle by the system
#	- vehicle_rider: Recognize the entity as the vehicle's driver
#	- vehicle_rider_noMoved: Know if the vehicle's driver has moved or not
#
# Scores:
#	- minSpeed: The minimal speed of the vehicle
#	- maxSpeed: The maximal speed of the vehicle
#	- acceleration: The amount of speed that will be added for the acceleration
#	- Var1: the current speed of the vehicle; Also used for modifying and reassigning this speed
#	- Var2: the current X location of the vehicle's driver
#	- Var3: the current Z location of the vehicle's driver
#	- LocX: the previous X location of the vehicle's driver
#	- LocZ: the previous Z location of the vehicle's driver