# AI Ground Combat: FightState/Waiting
# Called by ai/ground/combat/main

# Switches to the Searching Fight State if there are bullets nearby
execute as @e[tag=Bullet] at @s run scoreboard players set @e[scores={FightState=2},distance=..15] NewFightState 1

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=2,TargetID=1..}] NewFightState 3

# If an ally unimportant AI is in this fight state, it will move towards the nearest movement target
execute at @e[tag=BMVillager,tag=!ReviveTarget,limit=1,sort=random] as @e[tag=AIFighting,tag=!FightWithPlayer,scores={Team=1,FightState=2},distance=3..] run function tria:ai/ground/combat/fightstates/waiting-move

# Makes a random movement every 2 seconds 
scoreboard players set @e[scores={FightState=2,TFclock=1}] SRmoves 1

# LookAround animation
execute if entity @e[scores={FightState=2,gestureTime=0}] run function tria:ai/ground/combat/tools/lookaround