#Path: tria:weapons/groundvehicle/tank/shot

#System: Vehicle / Ground / Tank
#Author: A~Z

#Code:
	#Reset score
scoreboard players set @s onCarrot 0

	#Initialize shield
tag @s add tank_active_shield

	#Set entity projectile immunity
tag @s remove CanBeShot

	#Set cool-down
scoreboard players set @s Tank_CDShield 300
tag @s add tank_cooldown_shield