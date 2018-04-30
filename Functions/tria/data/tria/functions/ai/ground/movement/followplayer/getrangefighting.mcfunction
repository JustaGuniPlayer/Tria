# AI Ground Movement: Follow Player: Get Range Fighting

# Determines the action to do based on the distance to the nearest player while fighting
scoreboard players set @e[tag=FollowPlayer,tag=AIFighting] FPrange 5
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=AIFighting,distance=16..30] FPrange 4
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=AIFighting,distance=9..16] FPrange 3
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=AIFighting,distance=3..9] FPrange 2
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=AIFighting,distance=..3] FPrange 1

# Warning, if you modify the ranges, you have to change the distance in ground/combat/main (for the FightWithPlayer system)