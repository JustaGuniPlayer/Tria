# AI Ground Combat: Look Around
# Called by ai/ground/combat/fightstates/searching and waiting

# Starts an anim (look around 1 or look around 2)
execute as @e[scores={FightState=1..2,gestureTime=0}] run scoreboard players operation @s gesture = @e[tag=Random,scores={Random=5..7},limit=1,sort=random] Random
scoreboard players set @e[scores={FightState=1..2,gestureTime=0}] gestureTime 50
