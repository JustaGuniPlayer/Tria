# Spawns a MainAI

summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","InitAI"],ShowArms:1,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}]}

execute as @e[tag=InitAI] run function tria:ai/ground/combat/tools/init

tag @e remove InitAI