# Sticky Grenade
# Main

# Collisions
tag @e[tag=Grenade_Sticky] add GrenadeStick
execute as @e[tag=Grenade_Sticky] at @s if block ~0.3 ~ ~ #tria:transparent if block ~-0.3 ~ ~ #tria:transparent if block ~ ~0.3 ~ #tria:transparent if block ~ ~-0.3 ~ #tria:transparent if block ~ ~ ~0.3 #tria:transparent if block ~ ~ ~-0.3 #tria:transparent run tag @s remove GrenadeStick

execute as @e[tag=GrenadeStick] run function tria:weapons/grenades/sticky/stick