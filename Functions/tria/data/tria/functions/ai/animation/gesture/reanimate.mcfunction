#System: Gesture
#Name: Speech

#Author: A~Z

#Code:
execute as @e[tag=doGesture, scores={gesturePart= 1, gesture=4}] run data merge entity @s {Pose:{Head:[10f,0f,0f], LeftArm:[-10f, 5f,0f], RightArm:[ 2f,1f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 2, gesture=4}] run data merge entity @s {Pose:{Head:[20f,0f,0f], LeftArm:[-20f,10f,0f], RightArm:[ 4f,2f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 3, gesture=4}] run data merge entity @s {Pose:{Head:[30f,0f,0f], LeftArm:[-30f,15f,0f], RightArm:[ 6f,3f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 4, gesture=4}] run data merge entity @s {Pose:{Head:[40f,0f,0f], LeftArm:[-40f,20f,0f], RightArm:[ 8f,4f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 5, gesture=4}] run data merge entity @s {Pose:{Head:[50f,0f,0f], LeftArm:[-50f,25f,0f], RightArm:[10f,5f,0f]}}

execute as @e[tag=doGesture, scores={gesturePart= 6, gesture=4}] run data merge entity @s {Pose:{Head:[40f,0f,0f], LeftArm:[-40f,20f,0f], RightArm:[ 8f,4f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 7, gesture=4}] run data merge entity @s {Pose:{Head:[30f,0f,0f], LeftArm:[-30f,15f,0f], RightArm:[ 6f,3f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 8, gesture=4}] run data merge entity @s {Pose:{Head:[20f,0f,0f], LeftArm:[-20f,10f,0f], RightArm:[ 4f,2f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 9, gesture=4}] run data merge entity @s {Pose:{Head:[10f,0f,0f], LeftArm:[-10f, 5f,0f], RightArm:[ 2f,1f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=10, gesture=4}] run data merge entity @s {Pose:{Head:[ 0f,0f,0f], LeftArm:[ -0f, 0f,0f], RightArm:[ 0f,0f,0f]}}

	#Reset
scoreboard players set @e[tag=doGesture, scores={gesturePart=10.., gesture=4}] gesturePart 0