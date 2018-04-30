# AI Ground Combat: FightState/Change/Dead
# FightState: 7

# Generic changes
tag @e[scores={NewFightState=7}] remove SearchBullet
scoreboard players set @e[scores={NewFightState=7}] TestFrequency -1
tag @e[scores={NewFightState=7}] remove FollowPlayer
tag @e[scores={NewFightState=7}] remove BasicMoving
tag @e[scores={NewFightState=7}] remove LinearMoving
tag @e[scores={NewFightState=7}] remove DontStopBM
tag @e[scores={NewFightState=7}] remove CanBeShot