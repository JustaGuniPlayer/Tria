# Spawns an ally

summon armor_stand ~0.001 ~ ~0.001 {NoBasePlate:1b,Tags:["Timer2s","CanBeAlive","InitAI"],Marker:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}]}

execute as @e[tag=InitAI] run function tria:ai/ground/combat/tools/init
scoreboard players set @e[tag=InitAI] Team 1

# Without that, the Timers would be synchronised, which is not interesting because we already have Data's timer for that
scoreboard players operation @e[tag=InitAI,limit=1] Timer2s = @e[tag=Random,scores={Random=1..10},limit=1,sort=random] Random

tag @e remove InitAI