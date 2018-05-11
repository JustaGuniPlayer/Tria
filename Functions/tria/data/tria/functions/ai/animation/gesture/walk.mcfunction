#System: Gesture
#Name: Walk

#Author: A~Z

#Code:
execute as @e[tag=doGesture, scores={gesturePart= 1, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[10f,0f,0f], RightLeg:[-10f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 2, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[20f,0f,0f], RightLeg:[-20f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 3, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[30f,0f,0f], RightLeg:[-30f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 4, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[40f,0f,0f], RightLeg:[-40f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 5, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[50f,0f,0f], RightLeg:[-50f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 6, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[40f,0f,0f], RightLeg:[-40f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 7, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[30f,0f,0f], RightLeg:[-30f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 8, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[20f,0f,0f], RightLeg:[-20f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart= 9, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[10f,0f,0f], RightLeg:[-10f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=10, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[ 0f,0f,0f], RightLeg:[ -0f,0f,0f]}}

execute as @e[tag=doGesture, scores={gesturePart=11, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-10f,0f,0f], RightLeg:[10f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=12, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-20f,0f,0f], RightLeg:[20f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=13, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-30f,0f,0f], RightLeg:[30f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=14, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-40f,0f,0f], RightLeg:[40f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=15, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-50f,0f,0f], RightLeg:[50f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=16, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-40f,0f,0f], RightLeg:[40f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=17, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-30f,0f,0f], RightLeg:[30f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=18, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-20f,0f,0f], RightLeg:[20f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=19, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[-10f,0f,0f], RightLeg:[10f,0f,0f]}}
execute as @e[tag=doGesture, scores={gesturePart=20, gesture=3}] run data merge entity @s {Pose:{LeftLeg:[ -0f,0f,0f], RightLeg:[ 0f,0f,0f]}}

	#Reset
scoreboard players set @e[tag=doGesture, scores={gesturePart=20.., gesture=3}] gesturePart 0