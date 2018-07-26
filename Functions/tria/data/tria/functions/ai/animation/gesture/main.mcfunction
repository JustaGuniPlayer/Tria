#System: Gesture
#Name: Gesture
#Path: tria:ai/animation/gesture/main

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements:
# - gesture (score dummy)
# - gestureTime (score dummy)
# - gesturePart (score dummy)
# - gestureSpeed (score dummy)

#Input:
# - gestureTime (score dummy)
# - gesture (score dummy)
# - gestureSpeed (score dummy)

#Output: /

#Code:

	#gesture starter
execute as @e[scores={gestureStart=1..}] run function tria:ai/animation/gesture/start	
	
	#timer
tag @e[scores={gestureTime=1..}, tag=!gesturePause] add doGesture
scoreboard players remove @e[tag=doGesture] gestureTime 1
	#If score gesture equals -1, the entity will endless make its gesture
tag @e[scores={gestureTime=-1}, tag=!gesturePause] add doGesture

	#gesturePart adder
execute as @e[tag=doGesture] run scoreboard players operation @s gesturePart += @s gestureSpeed

	#gesture functions manager
execute if entity @e[tag=doGesture,scores={gesture=1},limit=1] run function tria:ai/animation/gesture/speech
execute if entity @e[tag=doGesture,scores={gesture=2},limit=1] run function tria:ai/animation/gesture/reload
execute if entity @e[tag=doGesture,scores={gesture=3},limit=1] run function tria:ai/animation/gesture/walk
execute if entity @e[tag=doGesture,scores={gesture=4},limit=1] run function tria:ai/animation/gesture/reanimate
execute if entity @e[tag=doGesture,scores={gesture=5},limit=1] run function tria:ai/animation/gesture/lookaround1
execute if entity @e[tag=doGesture,scores={gesture=6},limit=1] run function tria:ai/animation/gesture/lookaround2
execute if entity @e[tag=doGesture,scores={gesture=7},limit=1] run function tria:ai/animation/gesture/lookaround3
execute if entity @e[tag=doGesture,scores={gesture=8},limit=1] run function tria:ai/animation/gesture/idle

# Synchronizer
# execute as @e[tag=doGesture] unless entity @s[scores={Head0=0}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Head0
# execute as @e[tag=doGesture] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s Head1
# execute as @e[tag=doGesture] store result entity @s Pose.Head[2] float 1 run scoreboard players get @s Head2

# execute as @e[tag=doGesture] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s LeftArm0
# execute as @e[tag=doGesture] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s LeftArm1
# execute as @e[tag=doGesture] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s LeftArm2

# execute as @e[tag=doGesture] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s RightArm0
# execute as @e[tag=doGesture] store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s RightArm1
# execute as @e[tag=doGesture] store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s RightArm2

# execute as @e[tag=doGesture] store result entity @s Pose.Body[0] float 1 run scoreboard players get @s Body0
# execute as @e[tag=doGesture] store result entity @s Pose.Body[1] float 1 run scoreboard players get @s Body1
# execute as @e[tag=doGesture] store result entity @s Pose.Body[2] float 1 run scoreboard players get @s Body2

# execute as @e[tag=doGesture] store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s LeftLeg0
# execute as @e[tag=doGesture] store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s LeftLeg1
# execute as @e[tag=doGesture] store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s LeftLeg2

# execute as @e[tag=doGesture] store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s RightLeg0
# execute as @e[tag=doGesture] store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s RightLeg1
# execute as @e[tag=doGesture] store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s RightLeg2

# The Head[0] is never set to 0 to avoid MC-80975

	#reset
tag @e[tag=doGesture] remove doGesture

#############################################################################################################
# Scores:																									#
#	- gestureTime (dummy): It is the instances counters. Set -1 for countless uses							#
#	- gesturePart (dummy): It is the current part of the gesture. It is used in the gesture function.		#
#	- gesture (dummy): Set the rank of the gesture you want to use											#
#	- gestureSpeed(dummy): Set the speed of the gesture. Set 1 for normal speed.							#
#																											#
# Tags:																										#
#	- doGesture: When an entity has the doGesture tag, it can have a gesture								#
#	- gesturePause: Make an entity not recognized by the system												#
#############################################################################################################

#Gestures List:
# 1: speech
# 2: reload
# 3: walk
# 4: reanimate
# 5: lookaround1
# 6: lookaround2
# 7: lookaround3
# 8: idle