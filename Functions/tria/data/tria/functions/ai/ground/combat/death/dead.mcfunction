# AI Ground Combat: Dead
# Called by ai/ground/combat/main

# Also used for the player

#Blocks any movement
execute as @a[tag=Dead] at @s positioned ~ ~2 ~ at @e[tag=ReviveTarget,distance=..3,limit=1,sort=nearest] run tp @s ~ ~-2 ~

#Time to revive
execute as @e[scores={ID=1..4},tag=!Dead] at @s unless entity @s[scores={FightState=1..5}] run scoreboard players add @e[tag=Dead,distance=..3.5,limit=1,sort=nearest] ReviveTime 2
scoreboard players remove @e[scores={ReviveTime=1..}] ReviveTime 1

#Revive after 4 seconds
execute as @e[type=!player,tag=Dead,scores={ReviveTime=80..}] run function tria:ai/ground/combat/death/reviveai
execute as @a[tag=Dead,scores={ReviveTime=80..}] run function tria:generic/revive

#Calls the nearest main AI
execute at @e[tag=Dead] run scoreboard players set @e[tag=MainAI,scores={FightState=..4},distance=..2,limit=1,sort=nearest] NewFightState 6
execute unless entity @e[scores={FightState=5..6}] run function tria:ai/ground/combat/death/dead-call

#Particle
execute at @e[tag=Dead] run particle block redstone_block ~ ~2.5 ~ 0 0 0 0.1 2 force 