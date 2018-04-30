# AI Ground Combat: FightState/Change/Searching
# FightState: 1

# Generic changes
tag @e[scores={NewFightState=1}] add SearchBullet
scoreboard players set @e[scores={NewFightState=1}] TestFrequency 10
tag @e[scores={NewFightState=1}] remove FollowPlayer
tag @e[scores={NewFightState=1}] remove BasicMoving
tag @e[scores={NewFightState=1}] remove LinearMoving
tag @e[scores={NewFightState=1}] remove DontStopBM
tag @e[scores={NewFightState=1}] add CanBeShot

# Specific changes
scoreboard players set @e[scores={NewFightState=1}] VisTestCount 0