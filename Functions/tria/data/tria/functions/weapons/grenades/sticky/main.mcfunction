# Sticky Grenade
# Main

# Corrects the wierd behavior of armor stands in the air (the air resistance is way to high)
execute as @e[tag=Grenade_Sticky] store result entity @s Motion[0] double 0.002 run scoreboard players get @s VectorX
execute as @e[tag=Grenade_Sticky] store result entity @s Motion[2] double 0.002 run scoreboard players get @s VectorZ

# Collisions
tag @e[tag=Grenade_Sticky] add GrenadeStick
execute as @e[tag=Grenade_Sticky] at @s if block ~0.3 ~ ~ #tria:transparent if block ~-0.3 ~ ~ #tria:transparent if block ~ ~0.3 ~ #tria:transparent if block ~ ~-0.3 ~ #tria:transparent if block ~ ~ ~0.3 #tria:transparent if block ~ ~ ~-0.3 #tria:transparent run tag @s remove GrenadeStick

execute as @e[tag=GrenadeStick] run function tria:weapons/grenades/sticky/stick