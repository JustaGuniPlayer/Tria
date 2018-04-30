# AI Ground Combat: FightState/Moving
# Called by ai/ground/combat/main

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=4,TargetID=1..}] NewFightState 3

# Switches to the Searching Fight State if it stops moving
scoreboard players set @e[scores={FightState=4,Walking=1..}] Timer2s 1
scoreboard players set @e[scores={FightState=4,Timer2s=40}] NewFightState 1