# AI Ground Combat: FightState/MovingToRevive
# Called by ai/ground/combat/main

# Goes to the Revive Fight State if there is an AI to revive nearby
execute as @e[tag=Dead] at @s run scoreboard players set @e[scores={FightState=5},distance=..3.5] NewFightState 6

# Switches to the Shooting Fight State if it has a target (because of the SearchBullet)
scoreboard players set @e[scores={FightState=5,TargetID=1..}] NewFightState 3

# Switches to the Searching Fight State if it stops moving
scoreboard players set @e[scores={FightState=5,Walking=1..}] Timer2s 1
scoreboard players set @e[scores={FightState=5,Timer2s=40}] NewFightState 1