#System: Gesture
#Name: Speech

#Author: A~Z

#Code:
execute as @e[tag=doGesture, scores={gesturePart= 1, gesture=1}] run data merge entity @s {Pose:{Head:[0f, 0f,0f], LeftArm:[0f,0f,-6f], RightArm:[0f,0f,6f]}}
execute as @e[tag=doGesture, scores={gesturePart= 2, gesture=1}] run data merge entity @s {Pose:{Head:[1f, 0f,0f], LeftArm:[0f,1f,-5f], RightArm:[0f,1f,5f]}}
execute as @e[tag=doGesture, scores={gesturePart= 3, gesture=1}] run data merge entity @s {Pose:{Head:[2f,-1f,0f], LeftArm:[0f,2f,-3f], RightArm:[0f,2f,3f]}}
execute as @e[tag=doGesture, scores={gesturePart= 4, gesture=1}] run data merge entity @s {Pose:{Head:[3f,-1f,0f], LeftArm:[0f,3f,-2f], RightArm:[0f,3f,2f]}}
execute as @e[tag=doGesture, scores={gesturePart= 5, gesture=1}] run data merge entity @s {Pose:{Head:[4f,-1f,0f], LeftArm:[0f,4f, 0f], RightArm:[0f,4f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 6, gesture=1}] run data merge entity @s {Pose:{Head:[5f,-1f,0f], LeftArm:[0f,5f, 0f], RightArm:[0f,5f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 7, gesture=1}] run data merge entity @s {Pose:{Head:[4f, 0f,0f], LeftArm:[0f,4f,-2f], RightArm:[0f,4f,2f]}}
execute as @e[tag=doGesture, scores={gesturePart= 8, gesture=1}] run data merge entity @s {Pose:{Head:[3f, 0f,0f], LeftArm:[0f,3f,-3f], RightArm:[0f,3f,3f]}}
execute as @e[tag=doGesture, scores={gesturePart= 9, gesture=1}] run data merge entity @s {Pose:{Head:[2f, 0f,0f], LeftArm:[0f,2f,-5f], RightArm:[0f,2f,5f]}}
execute as @e[tag=doGesture, scores={gesturePart=10, gesture=1}] run data merge entity @s {Pose:{Head:[1f, 0f,0f], LeftArm:[0f,1f,-6f], RightArm:[0f,1f,6f]}}

#Reset
scoreboard players set @e[tag=doGesture, scores={gesturePart=11.., gesture=1}] gesturePart 0