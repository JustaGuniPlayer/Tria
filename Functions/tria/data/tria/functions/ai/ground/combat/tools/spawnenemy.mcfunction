# Spawns an enemy

summon armor_stand ~ ~ ~ {NoBasePlate:1b,Tags:["CanBeAlive","InitAI"],Marker:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],Passengers:[{id:"minecraft:creeper",Silent:1b,Team:"Enemy",NoAI:1b,Health:100f,ExplosionRadius:0b,Tags:["CanBeAlive","AIHitbox","Invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:100}]}]}

execute as @e[tag=InitAI] run function tria:ai/ground/combat/tools/init
scoreboard players set @e[tag=InitAI] Team -1

tag @e remove InitAI