# AI Combat: Change Fight State
# Changes the current Fight State

tag @e[scores={NewFightState=1..}] remove Timer2s

# Initialises the new fight state
execute if entity @e[scores={NewFightState=1}] run function tria:ai/ground/combat/fightstates/change/searching
execute if entity @e[scores={NewFightState=2}] run function tria:ai/ground/combat/fightstates/change/waiting
execute if entity @e[scores={NewFightState=3}] run function tria:ai/ground/combat/fightstates/change/shooting
execute if entity @e[scores={NewFightState=4}] run function tria:ai/ground/combat/fightstates/change/moving
execute if entity @e[scores={NewFightState=5}] run function tria:ai/ground/combat/fightstates/change/movingtorev
execute if entity @e[scores={NewFightState=6}] run function tria:ai/ground/combat/fightstates/change/reviving
execute if entity @e[scores={NewFightState=7}] run function tria:ai/ground/combat/fightstates/change/dead

# Arms animation
execute as @e[scores={NewFightState=1..}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}

# Leaves the safe zone
tag @e[scores={NewFightState=1..},tag=InSafeZone] add ExitSafeZone

# Resets the Target if the entity doesn't want to shoot
execute as @e[scores={NewFightState=1..}] unless entity @s[scores={NewFightState=3}] run scoreboard players set @s TargetID 0

# Updates the TestFrequency system
execute as @e[scores={NewFightState=1..,TestFrequency=0..}] run function tria:ai/ground/combat/tools/changetf

tag @e[scores={NewFightState=1..6}] remove Dead
tag @e[scores={NewFightState=1..}] remove BlockVisTests

# Changes the fight state
execute as @e[scores={NewFightState=1..}] run scoreboard players operation @s FightState = @s NewFightState
scoreboard players set @e[scores={NewFightState=1..}] NewFightState 0