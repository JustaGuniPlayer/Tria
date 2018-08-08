#Path: tria:weapons/groundvehicle/tank/shot

#System: Vehicle / Ground / Tank
#Author: A~Z

#Code:
execute as @e[tag=Projectile, distance=..4] at @s run particle minecraft:dolphin ~ ~ ~ 0.1 0.1 0.1 0.1 1000 

tag @e[tag=Projectile, distance=..4] add ProjCollide
function tria:weapons/projectiles/collision/collide

tag @e[tag=tank_shield_active, scores={Tank_cooldown_shield=..200}] remove tank_shield_active