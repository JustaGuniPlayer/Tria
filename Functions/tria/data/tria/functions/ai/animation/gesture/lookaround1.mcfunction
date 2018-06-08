#System: Gesture
#Name: Look Around 1

#Author: A~Z

#Code:
scoreboard players set @e[tag=doGesture, scores={gesturePart=35.., gesture=5}] gesturePart 0

execute as @e[tag=doGesture, scores={gesturePart=  0..4, gesture=5}] run scoreboard players remove @s Head0 2

execute as @e[tag=doGesture, scores={gesturePart= 5..14, gesture=5}] run scoreboard players add @s Head1 3

execute as @e[tag=doGesture, scores={gesturePart=15..34, gesture=5}] run scoreboard players remove @s Head1 3

execute as @e[tag=doGesture, scores={gesturePart=35..44, gesture=5}] run scoreboard players add @s Head0 1
execute as @e[tag=doGesture, scores={gesturePart=35..44, gesture=5}] run scoreboard players add @s Head1 3
