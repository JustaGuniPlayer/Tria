#Path: tria:weapons/ground_vehicle/tank/shot

#System: Vehicle / Ground / Tank
#Author: A~Z

#Code:
	
# The tank has the Source tag
	
	#Create the missile
summon armor_stand ~ ~ ~ {Tags:["Projectile","tank_missile","InitTankMissile","DealDamages","ShellCollisions","CanBeAlive"], Small:1, Invisible:1, Marker:1, NoGravity:1}
execute as @a[tag=tank_rider,scores={UseCarrot=1..}] if score @s ID = @e[tag=Source,limit=1] TargetID run tp @e[tag=InitTankMissile] @s
execute as @e[tag=InitTankMissile] at @s run tp @s ~ ~1.6 ~

	#Settings of the missile
scoreboard players set @e[type=armor_stand,tag=InitTankMissile] ProjectileSpeed 10

scoreboard players set @e[type=armor_stand,tag=InitTankMissile] Damage 300
scoreboard players set @e[type=armor_stand,tag=InitTankMissile] HeadDamage 500

scoreboard players operation @e[type=armor_stand,tag=InitTankMissile] Team = @s Team

scoreboard players set @e[type=armor_stand,tag=InitTankMissile] Inaccuracy 1

tag @e remove InitTankMissile

	#Initialize the shot's cool-down
scoreboard players set @s CD_Shoot 200