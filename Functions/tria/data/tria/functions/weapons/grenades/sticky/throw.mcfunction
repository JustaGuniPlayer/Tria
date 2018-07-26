# Sticky Grenade
# Throw

scoreboard players remove @s Grenades 1

# execute at @s run summon armor_stand ~ ~1.62 ~ {Tags:["Grenade_Sticky","Grenade","CanBeAlive","InitGrenade"],Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}],Marker:1}
# execute at @s run summon cow ~ ~1.62 ~ {Tags:["Grenade_Sticky","Grenade","CanBeAlive","InitGrenade"]}
execute at @s run summon item ~ ~1.62 ~ {Tags:["Grenade_Sticky","Grenade","CanBeAlive","InitGrenade"],Item:{id:"minecraft:emerald_block",Count:1b},PickupDelay:32767}

scoreboard players set @e[tag=InitGrenade] GrenadeCooldown 80
execute as @e[tag=InitGrenade] at @s run tp @s @p[scores={ID=1..4}]
execute as @e[tag=InitGrenade] at @s run tp @s ~ ~1.62 ~
execute as @e[tag=InitGrenade] run function tria:weapons/grenades/give_velocity

tag @e remove InitGrenade