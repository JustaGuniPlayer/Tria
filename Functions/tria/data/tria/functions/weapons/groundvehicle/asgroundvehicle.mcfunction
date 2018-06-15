#Name: As Ground Vehicle
#Path: tria:weapons/groundvehicle/asgroundvehicle

#System: Pathfinder
#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - onHorseWalk (score minecraft.custom:minecraft.horse_one_cm)
# - speed (Import File)

#Input:
# - minSpeed (Speed Min)
# - maxSpeed (Speed Max)
# - acceleration (Acceleration Adder)

#Output: /

#Code:
	#Get Current Speed
execute as @e[type=horse, tag=vehicle] store result score @s Tmp4 run data get entity @s Attributes[2].Base 1000

	#Accelerate if has moved
execute as @e[type=horse, tag=vehicle, scores={onHorseWalk=1..}] unless score @s Tmp4 >= @s maxSpeed run scoreboard players operation @s Tmp4 += @s acceleration
execute as @e[type=horse, tag=vehicle] if score @s Tmp4 > @s maxSpeed run scoreboard players operation @s Tmp4 = @s maxSpeed

	#Stop if has not moved
execute as @e[type=horse, tag=vehicle, scores={onHorseWalk=..0}] run scoreboard players operation @s Tmp4 = @s minSpeed

	#Store new speed
execute as @e[type=horse, tag=vehicle] store result entity @s Attributes[2].Base double 1000 run scoreboard players get @s Tmp4

####################################################################################################################################################
# Tags:
#	- vehicle: set the horse as a vehicle, so it will be used as a vehicle
#
# Scores:
#	- minSpeed: The minimal speed of the vehicle
#	- maxSpeed: The maximal speed of the vehicle
#	- acceleration mp3: The amount of speed that will be added for the acceleration
#	- Tmp4: the current speed of the vehicle; Also used for modifying and reassigning this speed
