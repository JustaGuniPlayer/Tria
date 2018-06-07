# AI Ground Combat: Tools/SRmoves : Small Random Moves
# Called by ai/ground/combat/main

# Makes the armor stand do small random moves

# Gets a random number from 1 to 4
execute as @e[scores={SRmoves=1..}] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..4},limit=1,sort=random] Random

# Moves according to the number, if the destination is valid (no wall, no hole)
execute as @e[scores={SRmoves=1..,Random=1}] at @s positioned ^0.3 ^ ^ if block ~ ~0.1 ~ #tria:cangothrough if block ~ ~1.1 ~ #tria:cangothrough unless block ~ ~-0.9 ~ #tria:cangothrough run tp @s ~ ~0.001 ~
execute as @e[scores={SRmoves=1..,Random=2}] at @s positioned ^0.8 ^ ^ if block ~ ~0.1 ~ #tria:cangothrough if block ~ ~1.1 ~ #tria:cangothrough unless block ~ ~-0.9 ~ #tria:cangothrough run tp @s ~ ~0.001 ~
execute as @e[scores={SRmoves=1..,Random=3}] at @s positioned ^-0.3 ^ ^ if block ~ ~0.1 ~ #tria:cangothrough if block ~ ~1.1 ~ #tria:cangothrough unless block ~ ~-0.9 ~ #tria:cangothrough run tp @s ~ ~0.001 ~
execute as @e[scores={SRmoves=1..,Random=4}] at @s positioned ^-0.8 ^ ^ if block ~ ~0.1 ~ #tria:cangothrough if block ~ ~1.1 ~ #tria:cangothrough unless block ~ ~-0.9 ~ #tria:cangothrough run tp @s ~ ~0.001 ~

scoreboard players remove @e[scores={SRmoves=1..}] SRmoves 1