# AI Ground Combat: Look Around
# Called by ai/ground/combat/fightstates/searching and waiting

# Starts an anim (look around 1, 2 or 3)
scoreboard players operation @s gestureStart = @e[tag=Random,scores={Random=5..7},limit=1,sort=random] Random
scoreboard players operation @s gestureStart *= 1000000 Constant
scoreboard players add @s gestureStart 50
