# AI Ground Combat: Dead
# Called by ai/ground/combat/main

# Also used for the player

#Time to revive
execute as @e[scores={ID=1..4},tag=!Dead] at @s run scoreboard players add @e[tag=Dead,distance=..3.5,limit=1,sort=nearest] ReviveTime 2
scoreboard players remove @e[scores={ReviveTime=1..}] ReviveTime 1

#Revive after 4 seconds
execute as @e[type=!player,tag=Dead,scores={ReviveTime=80..}] run function tria:ai/ground/combat/death/reviveai
execute as @a[tag=Dead,scores={ReviveTime=80..}] run function tria:generic/revive

#Calls the nearest main AI
execute at @e[tag=Dead] run scoreboard players set @e[tag=MainAI,scores={FightState=..4},distance=..3.5,limit=1,sort=nearest] NewFightState 5
execute unless entity @e[scores={FightState=5..6}] run function tria:ai/ground/combat/death/dead-call

