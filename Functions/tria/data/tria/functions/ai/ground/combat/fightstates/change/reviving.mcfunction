# AI Ground Combat: FightState/Change/Reviving
# FightState: 6

# Generic changes
tag @e[scores={NewFightState=6}] add SearchBullet
scoreboard players set @e[scores={NewFightState=6}] TestFrequency -1
tag @e[scores={NewFightState=6}] remove FollowPlayer
tag @e[scores={NewFightState=6}] remove BasicMoving
tag @e[scores={NewFightState=6}] remove LinearMoving
tag @e[scores={NewFightState=6}] remove DontStopBM
tag @e[scores={NewFightState=6}] add CanBeShot