# Weapons/Canon : Shoot
# Call this function on an entity to make it shoot with this system

# Summons the armor stand used to summon the particles
summon armor_stand ~ ~ ~ {Tags:["CanonRay","InitCanonRay","CanBeAlive"],NoGravity:1,Marker:1,Invisible:1}

# Initialisation
execute as @s at @s run tp @e[tag=InitCanonRay] @s 
execute as @e[tag=InitCanonRay] at @s run tp @s ~ ~1.6 ~
tag @e remove InitCanonRay

# Starts the timer
tag @s add LoadCanon