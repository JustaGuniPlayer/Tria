#Name: As Ground Vehicle
#Path: tria:weapons/ground_vehicle/as_ground_vehicle

#System: Vehicle / Ground
#Author: A~Z, KubbyDev

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - LocX (score dummy)
# - LocZ (score dummy)
# - EnginePower (score dummy)
# - Friction (score dummy)
# - temporary (Import File)

#Input:
# - EnginePower (score dummy)
# - Friction (score dummy)

#Output: /

#Code:
	#Get Position
execute as @e[tag=g_vehicle] at @s store result score @s Var2 run data get entity @s Pos[0] 100000
execute as @e[tag=g_vehicle] at @s store result score @s Var3 run data get entity @s Pos[2] 100000

	#Movement detection
execute as @e[tag=g_vehicle] unless score @s Var2 = @s LocX positioned ~ ~-1 ~ run tag @s add vehicle_accelerate
execute as @e[tag=g_vehicle] unless score @s Var3 = @s LocZ positioned ~ ~-1 ~ run tag @s add vehicle_accelerate

	#Debug
# execute as @e[tag=g_vehicle] unless score @s Var2 = @s LocX run say Move X
# execute as @e[tag=g_vehicle] unless score @s Var3 = @s LocZ run say Move Z

	#Get Current Speed
execute as @e[tag=g_vehicle] store result score @s Var1 run data get entity @s Attributes[2].Base 10000

	#Accelerate if has moved
execute as @e[tag=vehicle_accelerate] run scoreboard players operation @s Var1 += @s EnginePower
execute as @e[tag=vehicle_accelerate] run scoreboard players operation @s Var1 *= 1000 Constant
execute as @e[tag=vehicle_accelerate] run scoreboard players operation @s Var1 /= @s Friction

	#Decelerate if has not moved (We set the speed to 10 because 0 would prevent any future movement)
scoreboard players set @e[tag=g_vehicle, tag=vehicle_accelerate] Timer5ticks 0
scoreboard players set @e[tag=g_vehicle, tag=!vehicle_accelerate,scores={Timer5ticks=5}] Var1 10

	#Debug
# tellraw @a {"score":{"name":"@e[tag=g_vehicle]","objective":"Var1"}}

	#Store values	
execute as @e[tag=g_vehicle] store result entity @s Attributes[2].Base double 0.0001 run scoreboard players get @s Var1
execute as @e[tag=g_vehicle] run scoreboard players operation @s LocX = @s Var2
execute as @e[tag=g_vehicle] run scoreboard players operation @s LocZ = @s Var3

	#Reset scores
tag @e[tag=vehicle_accelerate] remove vehicle_accelerate

####################################################################################################################################################
# Tags:
#	- g_vehicle: Recognize the entity as a ground vehicle by the system
#
# Scores:
#	- Var1: the current speed of the vehicle; Also used for modifying and reassigning this speed
#	- Var2: the current X location of the vehicle
#	- Var3: the current Z location of the vehicle
#	- LocX: the previous X location of the vehicle
#	- LocZ: the previous Z location of the vehicle
#
# ------------------------------------------------
# How to use it:
#
# - A ground vehicle must have the Timer5ticks tag
#
# - To create a new vehicle you have to define the engine power (acceleration strength) and the friction
# These values are directly linked to the max speed of the vehicle, and the time needed to get 95% of that speed.
# MaxSpeed is in milliblocks/tick; Time is in ticks (time to reach 95% of the max speed)
# So you have to define a MaxSpeed and a Time, then do these calculations
# and use the results to set the Friction and the EnginePower (these scores only have to be set once on each vehicle)
#
# Friction = exp(2.996/Time) * 1000
# EnginePower = (exp(2.996/Time)-1) * MaxSpeed * 4.55
#
# - If you want to know what is the (MaxSpeed;Time) for a given (EnginePower;Friction), do these calculations:
#
# MaxSpeed = EnginePower/(((Friction/1000)-1)*4.55)
# Time = 2.996/ln(Friction/1000)
#
# The accuracy may not be perfect because the system uses integers
#
# ------------------------------------------------