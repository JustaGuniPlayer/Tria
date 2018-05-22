# Spawns an ally

summon armor_stand ~ ~ ~ {NoBasePlate:1b,Tags:["CanBeAlive","InitAI"],Marker:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}]}

execute as @e[tag=InitAI] run function tria:ai/ground/combat/tools/init
scoreboard players set @e[tag=InitAI] Team 1

tag @e remove InitAI