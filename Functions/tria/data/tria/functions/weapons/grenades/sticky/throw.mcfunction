# Sticky Grenade
# Throw

scoreboard players remove @s Grenades 1

execute at @s run summon armor_stand ~ ~ ~ {Tags:["Grenade_Sticky","Grenade","CanBeAlive","InitGrenade"],Invisible:1,Small:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1}]}

scoreboard players set @e[tag=InitGrenade] GrenadeCooldown 80
execute as @e[tag=InitGrenade] at @s run tp @s @p[scores={ID=1..4}]
execute as @e[tag=InitGrenade] at @s run tp @s ~ ~1.7 ~
execute as @e[tag=InitGrenade] run function tria:weapons/grenades/give_velocity

tag @e[tag=InitGrenade,scores={VectorX=0}] add Grenade_NoCollX
tag @e[tag=InitGrenade,scores={VectorZ=0}] add Grenade_NoCollZ

tag @e remove InitGrenade