# AI Ground Combat: FightState/Searching
# Called by ai/ground/combat/main

# Tests Counter
execute if entity @e[scores={FightState=1},tag=AskedVisTest] run function tria:ai/ground/combat/fightstates/searching-vistest

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=1,TargetID=1..}] NewFightState 3
