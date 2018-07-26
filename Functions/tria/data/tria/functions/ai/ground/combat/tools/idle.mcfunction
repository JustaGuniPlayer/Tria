# AI Ground Combat: Idle
# Called by ai/ground/combat/fightstates/searching and waiting

# Generates a number between 5 and 50 for the time (between 1/4 sec and 2.5 sec)
scoreboard players operation @s Var1 = @e[tag=Random,scores={Random=1..10},limit=1,sort=random] Random
scoreboard players operation @s Var1 *= 10 Constant

# Starts the animation
scoreboard players set @s gestureStart 8000000
scoreboard players operation @s gestureStart += @s Var1