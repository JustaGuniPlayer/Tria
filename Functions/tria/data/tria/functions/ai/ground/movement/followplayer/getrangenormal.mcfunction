# AI Ground Movement: Follow Player: Get Range Normal

# Determines the action to do based on the distance to the nearest player while not fighting
scoreboard players set @e[tag=FollowPlayer,tag=!AIFighting] FPrange 5
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=!AIFighting,distance=10..25] FPrange 4
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=!AIFighting,distance=8..10] FPrange 3
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=!AIFighting,distance=3..8] FPrange 2
execute as @a[scores={ID=1..4}] at @s run scoreboard players set @e[tag=FollowPlayer,tag=!AIFighting,distance=..3] FPrange 1