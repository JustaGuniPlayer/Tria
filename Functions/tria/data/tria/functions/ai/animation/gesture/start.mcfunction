
# gestureTime calculation
scoreboard players operation @s Var1 = @s gestureStart
scoreboard players operation @s Var1 %= 1000000 Constant
scoreboard players operation @s gestureTime = @s Var1

# gesture calculation
scoreboard players operation @s gestureStart -= @s gestureTime
scoreboard players operation @s gestureStart /= 1000000 Constant
scoreboard players operation @s gesture = @s gestureStart 

data merge entity @s {Pose:{Head:[1e-9f,0f,0f], LeftArm:[1e-9f,0f,0f], RightArm:[1e-9f,0f,0f], LeftLeg:[1e-9f,0f,0f], RightLeg:[1e-9f,0f,0f], Body:[1e-9f,0f,0f]}}

scoreboard players set @s Head0 0
scoreboard players set @s Head1 0
scoreboard players set @s Head2 0

scoreboard players set @s Body0 0
scoreboard players set @s Body1 0
scoreboard players set @s Body2 0

scoreboard players set @s LeftArm0 0
scoreboard players set @s LeftArm1 0
scoreboard players set @s LeftArm2 0

scoreboard players set @s LeftLeg0 0
scoreboard players set @s LeftLeg1 0
scoreboard players set @s LeftLeg2 0

scoreboard players set @s RightArm0 0
scoreboard players set @s RightArm1 0
scoreboard players set @s RightArm2 0

scoreboard players set @s RightLeg0 0
scoreboard players set @s RightLeg1 0
scoreboard players set @s RightLeg2 0

scoreboard players set @s gestureStart 0
scoreboard players set @s gesturePart 0