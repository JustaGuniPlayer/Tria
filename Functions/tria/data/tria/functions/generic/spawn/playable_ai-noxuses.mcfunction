# Spawns a MainAI

# Use this function when the AI has to fight against noxuses

summon armor_stand ~0.001 ~ ~0.001 {NoBasePlate:1b,Marker:1,ShowArms:1,DisabledSlots:2039583,Tags:["MainAI","CanBeAlive","InitMainAI"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],Passengers:[{id:"minecraft:sheep",Tags:["CanBeAlive","NoxusTarget","Invisible"],Silent:1b,NoAI:1b,Team:"Enemy",Health:100000f,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:100000}]}],Pose:{Body:[1e-9f,0f,0f],Head:[1e-9f,0f,0f],LeftLeg:[1e-9f,0f,0f],RightLeg:[1e-9f,0f,0f],LeftArm:[1e-9f,0f,0f],RightArm:[1e-9f,0f,0f]}}

scoreboard players set @e[tag=InitMainAI] Team 1
scoreboard players set @e[tag=InitMainAI] Health 400

scoreboard players set @e[tag=InitMainAI] ID 1
execute as @e[scores={ID=1..4},tag=!InitMainAI] run scoreboard players add @e[tag=InitMainAI] ID 1

tag @e remove InitMainAI