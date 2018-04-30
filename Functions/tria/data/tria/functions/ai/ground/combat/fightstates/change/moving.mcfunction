# AI Ground Combat: FightState/Change/Moving
# FightState: 4

# Generic changes
tag @e[scores={NewFightState=4}] add SearchBullet
scoreboard players set @e[scores={NewFightState=4}] TestFrequency 5
tag @e[scores={NewFightState=4}] add CanBeShot

# Specific changes
tag @e[scores={NewFightState=4}] add Timer2s