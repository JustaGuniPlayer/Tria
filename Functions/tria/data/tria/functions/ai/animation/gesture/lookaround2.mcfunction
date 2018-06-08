#System: Gesture
#Name: Look Around 2

#Author: A~Z

#Code:
scoreboard players set @e[tag=doGesture, scores=[gesturePart=25.., gesture=6] gesturePart 0

execute as @e[tag=doGesture, scores=[gesturePart= 0..12, gesture=6] run scoreboard players add LeftArm0 5
execute as @e[tag=doGesture, scores=[gesturePart=13..25, gesture=6] run scoreboard players remove LeftArm0 5
