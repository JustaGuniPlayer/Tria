# AI Ground Combat: FightState/Change/Waiting
# FightState: 2

# Generic changes
tag @e[scores={NewFightState=2}] add SearchBullet
scoreboard players set @e[scores={NewFightState=2}] TestFrequency 20
tag @e[scores={NewFightState=2}] remove FollowPlayer
tag @e[scores={NewFightState=2}] remove BasicMoving
tag @e[scores={NewFightState=2}] remove DontStopBM
tag @e[scores={NewFightState=2}] remove LinearMoving
tag @e[scores={NewFightState=2}] add CanBeShot