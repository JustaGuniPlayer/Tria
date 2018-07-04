#System: Gesture
#Name: Look Around 1

#Author: A~Z

#Code:
scoreboard players set @e[tag=doGesture, scores={gesturePart=50.., gesture=5}] gesturePart 0

execute as @e[tag=doGesture, scores={gesturePart=  0..4, gesture=5}] run scoreboard players remove @s Head0 2

execute as @e[tag=doGesture, scores={gesturePart= 5..14, gesture=5}] run scoreboard players add @s Head1 3

execute as @e[tag=doGesture, scores={gesturePart=15..34, gesture=5}] run scoreboard players remove @s Head1 3

execute as @e[tag=doGesture, scores={gesturePart=35..44, gesture=5}] run scoreboard players add @s Head0 1
execute as @e[tag=doGesture, scores={gesturePart=35..44, gesture=5}] run scoreboard players add @s Head1 3

#Synchronizer
execute as @e[tag=doGesture, scores={gesture=5}] unless entity @s[scores={Head0=0}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Head0
execute as @e[tag=doGesture, scores={gesture=5}] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s Head1