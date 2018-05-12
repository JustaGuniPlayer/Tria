# AI Ground Combat: FightState/Reviving
# Called by ai/ground/combat/main

# Returns to the Searching Fight State if there is no entity to revive
execute as @e[scores={FightState=6}] at @s unless entity @e[tag=Dead,distance=..3] run scoreboard players set @s NewFightState 1

# Switches to the Shooting Fight State if it has a target (because of the SearchBullet)
scoreboard players set @e[scores={FightState=6,TargetID=1..}] NewFightState 1

# Animation
scoreboard players set @e[scores={FightState=6}] gesture 4
scoreboard players set @e[scores={FightState=6}] gestureTime 5