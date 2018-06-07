# AI Ground Combat: FightState/Moving
# Called by ai/ground/combat/main

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=4,TargetID=1..}] NewFightState 3

# Switches to the Searching Fight State if it stops moving
scoreboard players add @e[scores={FightState=4}] 1stCdShoot 1
scoreboard players set @e[scores={FightState=4,Walking=1..}] 1stCdShoot 1
scoreboard players set @e[scores={FightState=4,1stCdShoot=60..}] NewFightState 1

# 1stCdShoot is used as a timer to reduce the number of ojectives (an entity can not be moving and shooting at the same time)