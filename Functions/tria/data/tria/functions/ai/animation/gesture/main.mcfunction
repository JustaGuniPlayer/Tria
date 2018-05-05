#System: Gesture
#Name: Gesture
#Path: gunivers-lib:system/gesture/gesture

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements:
# - gesture (score dummy)
# - gestureTime (score dummy)
# - gesturePart (score dummy)

#Input:
# - gestureTime (score dummy)
# - gesture (score dummy)

#Output: /

#Code:
	#timer
tag @e[scores={gestureTime=1..},tag=gesture] add doGesture
scoreboard players remove @e[tag=doGesture] gestureTime 1
	#If score gesture equals -1, the entity will endless make its gesture
tag @e[scores={gestureTime=-1},tag=gesture] add doGesture

	#gesturePart adder
scoreboard players add @e[tag=doGesture] gesturePart 1

	#gesture functions manager
execute if entity @e[tag=doGesture,scores={gesture=1},limit=1] run function tria:ai/animation/gesture/speech

	#reset
tag @e[tag=doGesture] remove doGesture

############################################################################################################
# gestureTime (score dummy): It is the instances counters. Set -1 for countless uses
# gesturePart (score dummy): It is the current part of the doGesture . It is used in the doGesture function.
# doGesture (tag): When an entity has the doGesture tag, it can have a gesture
# gesture (tag): Make an entity to be recognized by the system
# gesture (score dummy): Set the rank of the doGesture you want to use
############################################################################################################

#Gestures List:
# 1: speech