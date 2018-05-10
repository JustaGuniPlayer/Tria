# Weapons/Canon : Build Ray

# Summons the particles anchors
execute as @e[tag=CanonRay] at @s run summon armor_stand ~ ~ ~ {Tags:["RayParticles","CanBeAlive","InitRayParticles"],NoGravity:1,Marker:1,Invisible:1}
execute as @e[tag=InitRayParticles] at @s run tp @s @e[tag=CanonRay,distance=..0.2,limit=1,sort=nearest]
tag @e remove InitRayParticles

execute as @e[tag=CanonRay] at @s run tp @s ^ ^ ^4

# Walls detection
execute as @e[tag=CanonRay] at @s unless block ~ ~ ~ #tria:transparent run kill @s
execute as @e[tag=CanonRay] at @s unless block ^ ^ ^2 #tria:transparent run kill @s
