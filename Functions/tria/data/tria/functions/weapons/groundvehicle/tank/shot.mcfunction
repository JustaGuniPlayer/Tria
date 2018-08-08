#Path: tria:weapons/groundvehicle/tank/shot

#System: Vehicle / Ground / Tank
#Author: A~Z

#Code:
	#Reset score
scoreboard players set @s onCarrot 0
	
	#Create the missile
execute as @s at @s positioned ~ ~1 ~ rotated as @s run summon armor_stand ^ ^ ^0.5 {Tags:["Projectile","tank_missile","DealDamages","ShellCollisions"], Small:1, Invisible:1, Fire:-1, Marker:1}

	#Settings of the missile
scoreboard players set @e[type=armor_stand,tag=tank_missile,limit=1,sort=nearest] ProjectileSpeed 1

scoreboard players set @e[type=armor_stand,tag=tank_missile,limit=1,sort=nearest] Damage 6
scoreboard players set @e[type=armor_stand,tag=tank_missile,limit=1,sort=nearest] HeadDamage 8

scoreboard players operation @e[type=armor_stand,tag=tank_missile,limit=1,sort=nearest] Team = @s Team

scoreboard players set @e[type=armor_stand,tag=tank_missile,limit=1,sort=nearest] Unaccuracy 1

	#Initialize the shot's cool-down
scoreboard players set @s Tank_CDShot 200
tag @s add tank_cooldown_shot