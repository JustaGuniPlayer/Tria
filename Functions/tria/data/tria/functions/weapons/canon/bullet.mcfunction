# Weapons/Canon : Bullet

# Tp
execute as @e[tag=CanonBullet] at @s run tp @s ^ ^ ^2 

# Particles
execute as @e[tag=CanonBullet] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 10 force
execute as @e[tag=CanonBullet] at @s run particle cloud ^ ^ ^0.5 0.1 0.1 0.1 0 10 force
execute as @e[tag=CanonBullet] at @s run particle cloud ^ ^ ^1 0.1 0.1 0.1 0 10 force
execute as @e[tag=CanonBullet] at @s run particle cloud ^ ^ ^1.5 0.1 0.1 0.1 0 10 force

# Kills the particle armor_stands
execute as @e[tag=CanonBullet] at @s run kill @e[tag=RayParticles,distance=..2]

# Collision Detection
execute as @e[tag=CanonBullet] at @s unless block ~ ~ ~ #tria:transparent run tag @s add CanonExplode

# Explosion
execute as @e[tag=CanonExplode] at @s run summon armor_stand ~ ~ ~ {Tags:["InitCanonExplosion"],NoGravity:1,Marker:1,Invisible:1}
kill @e[tag=CanonExplode]

execute as @e[tag=InitCanonExplosion] at @s run function tria:generic/explosions/huge
scoreboard players set @e[tag=InitCanonExplosion] CanBeAlive -10
tag @e remove InitCanonExplosion