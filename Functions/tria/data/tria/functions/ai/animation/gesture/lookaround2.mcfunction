#System: Gesture
#Name: Look Around 2

#Author: A~Z

#Code:
scoreboard players set @e[tag=doGesture, scores={gesturePart=50.., gesture=6}] gesturePart 0

execute as @e[tag=doGesture, scores={gesturePart= 0..12, gesture=6}] run scoreboard players add @s Head1 5
execute as @e[tag=doGesture, scores={gesturePart=13..25, gesture=6}] run scoreboard players remove @s Head1 5
