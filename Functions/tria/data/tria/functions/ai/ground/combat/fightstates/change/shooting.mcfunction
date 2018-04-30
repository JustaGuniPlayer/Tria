# AI Ground Combat: FightState/Change/Shooting
# FightState: 3

# Generic changes
tag @e[scores={NewFightState=3}] remove SearchBullet
scoreboard players set @e[scores={NewFightState=3}] TestFrequency -1
tag @e[scores={NewFightState=3}] remove FollowPlayer
tag @e[scores={NewFightState=3}] remove BasicMoving
tag @e[scores={NewFightState=3}] remove LinearMoving
tag @e[scores={NewFightState=3}] remove DontStopBM
tag @e[scores={NewFightState=3}] add CanBeShot

# Specific changes
scoreboard players set @e[scores={NewFightState=3}] 1stCdShoot 0
execute as @e[scores={NewFightState=3}] run data merge entity @s {Pose:{RightArm:[-85f,-20f,-10f],LeftArm:[-75f,45f,0f]}}
