# AI Ground Combat: FightState/Waiting
# Called by ai/ground/combat/main

# Switches to the Searching Fight State if there are bullets nearby
execute as @e[tag=Bullet] at @s run scoreboard players set @e[scores={FightState=2},distance=..15] NewFightState 1

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=2,TargetID=1..}] NewFightState 3

# If an ally unimportant AI is in this fight state, it will move towards the nearest movement target
execute if entity @e[tag=BMVillager,tag=!ReviveTarget] as @e[tag=AIFighting,scores={Team=1,FightState=2}] run function tria:ai/ground/combat/fightstates/waiting-move
