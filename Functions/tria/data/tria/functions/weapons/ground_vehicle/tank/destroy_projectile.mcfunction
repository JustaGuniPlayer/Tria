#Path: tria:weapons/ground_vehicle/tank/destroy_projectile

#System: Vehicle / Ground / Tank
#Author: A~Z, KubbyDev

# Source entity is the tank, but the function is executed at the projectile's location

#Code:

tag @e[tag=Projectile,distance=..0.1,limit=1,sort=nearest] add TargetProjectile

execute if entity @e[tag=TargetProjectile,tag=ShellCollisions] run scoreboard players remove @s[tag=tank_shield_active] ShieldCharge 100
execute if entity @s[tag=tank_shield_active] at @e[tag=TargetProjectile,tag=ShellCollisions] run function tria:generic/explosions/tiny
execute if entity @s[tag=tank_shield_active] run kill @e[tag=TargetProjectile,tag=ShellCollisions]

execute if entity @e[tag=TargetProjectile,tag=BulletCollisions] run particle minecraft:dolphin ~ ~ ~ 0.2 0.2 0.2 0.5 100 force
kill @e[tag=TargetProjectile,tag=BulletCollisions]

tag @e remove TargetProjectile