# Bullets Movement, Collisions and Hit

# #tria:transparent contains all the blocks bullets should go through
execute as @e[tag=Bullet] at @s unless block ~ ~ ~ #tria:nobulletevent run tag @s add BulletCollide
execute if entity @e[tag=BulletCollide] run function tria:weapons/bullets/collision

# Damages
execute as @e[tag=Bullet,scores={Team=-1}] at @s positioned ~ ~-0.8 ~ run scoreboard players operation @e[tag=CanBeShot,scores={Team=1},distance=..0.8] Damage += @s Damage 
execute as @e[tag=Bullet,scores={Team=1}] at @s positioned ~ ~-0.8 ~ run scoreboard players operation @e[tag=CanBeShot,scores={Team=-1},distance=..0.8] Damage += @s Damage 
execute as @e[tag=Bullet,scores={Team=-1}] at @s positioned ~ ~-1.75 ~ run scoreboard players operation @e[tag=CanBeShot,scores={Team=1},distance=..0.4] Damage = @s HeadDamage 
execute as @e[tag=Bullet,scores={Team=1}] at @s positioned ~ ~-1.75 ~ run scoreboard players operation @e[tag=CanBeShot,scores={Team=-1},distance=..0.4] Damage = @s HeadDamage
execute if entity @e[tag=CanBeShot,scores={Damage=1..}] run function tria:weapons/bullets/damage

# Particle
execute as @e[tag=Bullet] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Teleports the bullets forward
execute as @e[tag=Bullet] at @s run tp @s ^ ^ ^0.5


# If the head isn't touched, all bullets damages touching the entity at the same tick will be added.
# But if the head is touched, the damage is set only once. This adds the possibility of bullets to be forgotten, but it prevents bullets from touching the head and the body at the same time ...
