#System: Gesture
#Name: Look Around 3

#Author: A~Z

#Code:
scoreboard players set @e[tag=doGesture, scores={gesturePart=50.., gesture=7}] gesturePart 0

execute as @e[tag=doGesture, scores={gesturePart= 0..12, gesture=7}] run scoreboard players remove @s Head1 5
execute as @e[tag=doGesture, scores={gesturePart=13..25, gesture=7}] run scoreboard players add @s Head1 5

#Synchronizer
execute as @e[tag=doGesture, scores={gesture=7}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s Head1