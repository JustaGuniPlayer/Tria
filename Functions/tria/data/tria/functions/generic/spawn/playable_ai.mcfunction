# Spawns a MainAI

summon armor_stand ~0.001 ~ ~0.001 {NoBasePlate:1b,Marker:1,ShowArms:1,DisabledSlots:2039583,Tags:["MainAI","CanBeAlive","InitMainAI"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],Pose:{Body:[1e-9f,0f,0f],Head:[1e-9f,0f,0f],LeftLeg:[1e-9f,0f,0f],RightLeg:[1e-9f,0f,0f],LeftArm:[1e-9f,0f,0f],RightArm:[1e-9f,0f,0f]}}

scoreboard players set @e[tag=InitMainAI] Team 1

scoreboard players set @e[tag=InitMainAI] ID 1
execute as @e[scores={ID=1..4},tag=!InitMainAI] run scoreboard players add @e[tag=InitMainAI] ID 1

tag @e remove InitMainAI