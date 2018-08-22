# Particles
execute at @e[tag=OptimisedProjectile,tag=Bullet] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=tank_missile] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=Bullet] run particle end_rod ^ ^ ^0.5 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=tank_missile] run particle end_rod ^ ^ ^0.5 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=Bullet] run particle end_rod ^ ^ ^1 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=tank_missile] run particle end_rod ^ ^ ^1 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=Bullet] run particle end_rod ^ ^ ^1.5 0 0 0 0 1 force
execute at @e[tag=OptimisedProjectile,tag=tank_missile] run particle end_rod ^ ^ ^1.5 0 0 0 0 1 force

# Teleports the projectile forward
execute as @e[tag=OptimisedProjectile] at @s run tp @s ^ ^ ^2

# Iterations counter
scoreboard players remove @e[tag=OptimisedProjectile] Var2 4