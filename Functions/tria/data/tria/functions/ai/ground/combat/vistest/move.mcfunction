# AI Ground Combat: VisibilityTest/Move

# #tria:transparent contains all the blocks bullets should go through
execute as @e[tag=VisTest] at @s unless block ~ ~ ~ #tria:transparent run tag @s add KillVisTest

# Searches for enemies
execute as @e[tag=CanBeShot,scores={Team=1}] at @s positioned ~ ~1 ~ run tag @e[tag=VisTest,scores={Team=-1},distance=..0.9] add FoundVisTest 
execute as @e[tag=CanBeShot,scores={Team=-1}] at @s positioned ~ ~1 ~ run tag @e[tag=VisTest,scores={Team=1},distance=..0.9] add FoundVisTest

# Teleports the fake bullet forward
execute as @e[tag=VisTest,tag=!FoundVisTest] at @s run tp @s ^ ^ ^0.5
