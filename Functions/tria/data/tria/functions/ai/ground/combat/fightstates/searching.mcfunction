# AI Ground Combat: FightState/Searching
# Called by ai/ground/combat/main

# Tests Counter
execute if entity @e[scores={FightState=1},tag=AskedVisTest] run function tria:ai/ground/combat/fightstates/searching-vistest

# Looks at a random near enemy every 0.5 second
execute as @e[scores={FightState=1,Team=1},tag=AskedVisTest] at @s run tp @s ~ ~0.001 ~ facing entity @e[scores={Team=-1},distance=..20,limit=1,sort=random] feet

# Switches to the Shooting Fight State if it has a target
scoreboard players set @e[scores={FightState=1,TargetID=1..}] NewFightState 3

# LookAround animation
execute if entity @e[scores={FightState=1,gestureTime=0}] run function tria:ai/ground/combat/tools/lookaround