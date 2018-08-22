# Bullets Movement by 0.5 block, with Collisions and Hit detection

# Lauches the movement function until no projectile needs to move anymore
# (If the fastest projectile has 2 blocks/tick speed, then the function will be executed 4 times)

# #tria:nobulletevent contains all the blocks bullets should go through without changing anything (glass isn't in it because it can trigger an event)
execute as @e[tag=Projectile] at @s unless block ~ ~ ~ #tria:nobulletevent run tag @s add ProjCollide
execute if entity @e[tag=ProjCollide] run function tria:weapons/projectiles/collision

# Damages
execute if entity @e[tag=CanBeShot,scores={Team=1,SpecialHitbox=0}] as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=1,SpecialHitbox=0},distance=..0.8] run function tria:weapons/projectiles/damage/damage_ally
execute if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=0}] as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=0},distance=..0.8] run function tria:weapons/projectiles/damage/damage_enemy
execute if entity @e[tag=CanBeShot,scores={Team=1,SpecialHitbox=0}] as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=1,SpecialHitbox=0},distance=..0.4] run function tria:weapons/projectiles/damage/damage_ally_head
execute if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=0}] as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=0},distance=..0.4] run function tria:weapons/projectiles/damage/damage_enemy_head
execute if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=1}] as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-0.5 ~ if entity @e[tag=CanBeShot,scores={Team=-1,SpecialHitbox=1},distance=..0.45] run function tria:weapons/projectiles/damage/damage_enemy

# Shields
execute at @e[tag=Projectile] as @e[tag=TankWithShield,distance=..4.5,limit=1,sort=nearest] unless score @s Team = @e[tag=Projectile,distance=..0.1,sort=nearest,limit=1] Team run function tria:weapons/ground_vehicle/tank/destroy_projectile

# Particles
execute at @e[tag=Bullet] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=tank_missile] run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Teleports the projectile forward
execute as @e[tag=Projectile,tag=!OptimisedProjectile] at @s run tp @s ^ ^ ^0.5

# Iterations counter
scoreboard players remove @e[tag=Projectile,tag=!OptimisedProjectile] Var2 1

# Optimised Projectiles
execute if entity @e[tag=OptimisedProjectile] run function tria:weapons/projectiles/optimised

execute if entity @e[tag=Projectile,scores={Var2=1..}] run function tria:weapons/projectiles/move

# SpecialHitbox
# 0: Player HitBox (2 blocks tall, with head)
# 1: Noxus HitBox (1 block tall)
# 2: Vehicle HitBox (2 blocks radius sphere)