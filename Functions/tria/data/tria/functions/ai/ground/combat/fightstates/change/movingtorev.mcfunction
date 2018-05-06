# AI Ground Combat: FightState/Change/MovingToRevive
# FightState: 5

# Generic changes
tag @e[scores={NewFightState=5}] add SearchBullet
scoreboard players set @e[scores={NewFightState=5}] TestFrequency -1
tag @e[scores={NewFightState=5}] remove FollowPlayer
tag @e[scores={NewFightState=5}] add BasicMoving
tag @e[scores={NewFightState=5}] remove LinearMoving
tag @e[scores={NewFightState=5}] add DontStopBM
tag @e[scores={NewFightState=5}] add CanBeShot

# Specific changes
tag @e[scores={NewFightState=5}] add Timer2s