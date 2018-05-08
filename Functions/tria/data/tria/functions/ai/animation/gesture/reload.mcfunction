#System: Gesture
#Name: Speech

#Author: A~Z

#Code:
# execute if entity @e[tag=doGesture, scores={gesturePart=3..9, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p1
# execute if entity @e[tag=doGesture, scores={gesturePart=10..16, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p2
# execute if entity @e[tag=doGesture, scores={gesturePart=17..23, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p3

# execute if entity @e[tag=doGesture, scores={gesturePart=24..30, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p4
# execute if entity @e[tag=doGesture, scores={gesturePart=31..45, gesture=2}, limit=1] unless score @s gesturePart matches 35..42 run function tria:ai/animation/gesture/child/reload/p5
# execute if entity @e[tag=doGesture, scores={gesturePart=46..54, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p6

# execute if entity @e[tag=doGesture, scores={gesturePart=55..64, gesture=2}, limit=1] unless score @s gesturePart matches 61..63 run function tria:ai/animation/gesture/child/reload/p7
# execute if entity @e[tag=doGesture, scores={gesturePart=67..73, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p8
# execute if entity @e[tag=doGesture, scores={gesturePart=74..80, gesture=2}, limit=1] run function tria:ai/animation/gesture/child/reload/p9

execute as @e[tag=doGesture, scores={gesturePart= 3, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[ -1f,-1f,-1f]}}
execute as @e[tag=doGesture, scores={gesturePart= 4, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[ -3f,-2f,-2f]}}
execute as @e[tag=doGesture, scores={gesturePart= 5, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[ -5f,-3f,-3f]}}
execute as @e[tag=doGesture, scores={gesturePart= 6, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[ -7f,-4f,-4f]}}
execute as @e[tag=doGesture, scores={gesturePart= 7, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[ -9f,-5f,-5f]}}
execute as @e[tag=doGesture, scores={gesturePart= 8, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[-11f,-6f,-6f]}}
execute as @e[tag=doGesture, scores={gesturePart= 9, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[-14f,-7f,-7f]}}

execute as @e[tag=doGesture, scores={gesturePart=10, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f, 0f,0f], RightArm:[-17f, -8f, -8f]}}
execute as @e[tag=doGesture, scores={gesturePart=11, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f, 0f,0f], RightArm:[-20f, -9f, -9f]}}
execute as @e[tag=doGesture, scores={gesturePart=12, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f, 2f,0f], RightArm:[-24f,-10f,-10f]}}
execute as @e[tag=doGesture, scores={gesturePart=13, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f, 4f,0f], RightArm:[-28f,-11f,-11f]}}
execute as @e[tag=doGesture, scores={gesturePart=14, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -1f, 6f,0f], RightArm:[-32f,-12f,-12f]}}
execute as @e[tag=doGesture, scores={gesturePart=15, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -3f, 8f,0f], RightArm:[-36f,-13f,-13f]}}
execute as @e[tag=doGesture, scores={gesturePart=16, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -5f,10f,0f], RightArm:[-40f,-14f,-14f]}}

execute as @e[tag=doGesture, scores={gesturePart=17, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -7f,12f,0f], RightArm:[-45f,-15f,-15f]}}
execute as @e[tag=doGesture, scores={gesturePart=18, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -9f,14f,0f], RightArm:[-50f,-16f,-16f]}}
execute as @e[tag=doGesture, scores={gesturePart=19, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-11f,16f,0f], RightArm:[-55f,-17f,-17f]}}
execute as @e[tag=doGesture, scores={gesturePart=20, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-14f,18f,0f], RightArm:[-60f,-18f,-18f]}}
execute as @e[tag=doGesture, scores={gesturePart=21, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-17f,20f,0f], RightArm:[-65f,-19f,-19f]}}
execute as @e[tag=doGesture, scores={gesturePart=22, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-20f,22f,0f], RightArm:[-70f,-20f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=23, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-24f,24f,0f], RightArm:[-70f,-21f,-20f]}}

execute as @e[tag=doGesture, scores={gesturePart=24, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-28f,26f,0f], RightArm:[-70f,-22f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=25, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-32f,28f,0f], RightArm:[-70f,-23f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=26, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-36f,30f,0f], RightArm:[-70f,-24f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=27, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-40f,32f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=28, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-45f,34f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=29, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-50f,36f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=30, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-55f,38f,0f], RightArm:[-70f,-25f,-20f]}}

execute as @e[tag=doGesture, scores={gesturePart=31, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-60f,40f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=32, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-65f,42f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=33, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-70f,44f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=34, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-70f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=43, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-68f,44f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=44, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-66f,42f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=45, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-64f,40f,0f], RightArm:[-70f,-25f,-20f]}}

execute as @e[tag=doGesture, scores={gesturePart=46, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-62f,38f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=47, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-60f,36f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=50, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-62f,38f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=51, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-60f,40f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=52, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-30f,42f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=53, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f,44f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=54, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ 30f,45f,0f], RightArm:[-70f,-25f,-20f]}}

execute as @e[tag=doGesture, scores={gesturePart=55, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ 60f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=56, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ 30f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=57, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=58, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-30f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=59, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-60f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=60, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-70f,45f,0f], RightArm:[-70f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=64, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-70f,50f,0f], RightArm:[-70f,-25f,-20f]}}

execute as @e[tag=doGesture, scores={gesturePart=67, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-65f,45f,0f], RightArm:[-65f,-25f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=68, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-60f,45f,0f], RightArm:[-60f,-23f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=69, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-55f,40f,0f], RightArm:[-55f,-21f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=70, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-50f,35f,0f], RightArm:[-50f,-19f,-20f]}}
execute as @e[tag=doGesture, scores={gesturePart=71, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-45f,30f,0f], RightArm:[-45f,-17f,-18f]}}
execute as @e[tag=doGesture, scores={gesturePart=72, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-40f,25f,0f], RightArm:[-40f,-15f,-16f]}}
execute as @e[tag=doGesture, scores={gesturePart=73, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-35f,20f,0f], RightArm:[-35f,-13f,-14f]}}

execute as @e[tag=doGesture, scores={gesturePart=74, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-30f,18f,0f], RightArm:[-30f,-11f,-12f]}}
execute as @e[tag=doGesture, scores={gesturePart=75, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-25f,15f,0f], RightArm:[-25f, -9f,-10f]}}
execute as @e[tag=doGesture, scores={gesturePart=76, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-20f,12f,0f], RightArm:[-20f, -7f, -8f]}}
execute as @e[tag=doGesture, scores={gesturePart=77, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-15f, 9f,0f], RightArm:[-15f, -5f, -6f]}}
execute as @e[tag=doGesture, scores={gesturePart=78, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[-10f, 6f,0f], RightArm:[-10f, -3f, -4f]}}
execute as @e[tag=doGesture, scores={gesturePart=79, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -5f, 3f,0f], RightArm:[ -5f, -1f, -2f]}}
execute as @e[tag=doGesture, scores={gesturePart=80, gesture=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f], LeftArm:[ -0f, 0f,0f], RightArm:[ -0f, -0f, -0f]}}
	#Reset
scoreboard players set @e[tag=doGesture, scores={gesturePart=80.., gesture=2}] gesturePart 0