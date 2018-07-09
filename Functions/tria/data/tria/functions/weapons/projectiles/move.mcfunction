# Bullets Movement by 0.5. block, with Collisions and Hit detection

# Lauches the movement function until no projectile needs to move anymore
# (If the fastest projectile has 2 blocks/tick speed, then the function will be executed 4 times)

# Iterations counter
scoreboard players remove @e[tag=Projectile] Var2 1

# #tria:transparent contains all the blocks bullets should go through
execute as @e[tag=Projectile] at @s unless block ~ ~ ~ #tria:nobulletevent run tag @s add ProjCollide
execute if entity @e[tag=ProjCollide] run function tria:weapons/projectiles/collision

# Damages
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=1},distance=..0.8] run function tria:weapons/projectiles/damage/damage_ally
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=-1},distance=..0.8] run function tria:weapons/projectiles/damage/damage_enemy
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=1},distance=..0.4] run function tria:weapons/projectiles/damage/damage_ally_head
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=-1},distance=..0.4] run function tria:weapons/projectiles/damage/damage_enemy_head

# Particles
execute as @e[tag=Bullet] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Teleports the projectile forward
execute as @e[tag=Projectile] at @s run tp @s ^ ^ ^0.5



execute if entity @e[tag=Projectile,scores={Var2=1..}] run function tria:weapons/projectiles/move

