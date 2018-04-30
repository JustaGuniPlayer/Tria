# AI Ground Combat: FightState/Reviving
# Called by ai/ground/combat/main

# Returns to the Searching Fight State if there is no entity to revive
execute as @e[scores={FightState=6}] at @s unless entity @e[scores={FightState=7},distance=..5] run scoreboard players set @s NewFightState 1

# Switches to the Shooting Fight State if it has a target (because of the SearchBullet)
scoreboard players set @e[scores={FightState=6,TargetID=1..}] NewFightState 1