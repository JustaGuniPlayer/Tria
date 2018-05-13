# AI Ground Combat: FightState/Shooting-Shoot

# Update the rotation to look at the enemy
execute as @e[tag=TargetAlive,scores={1stCdShoot=..0,FightState=3,TargetID=1..}] run function tria:ai/ground/combat/fightstates/shooting-look

# Shoots
tag @e[tag=TargetAlive,scores={1stCdShoot=..0,FightState=3,TargetID=1..}] add Shoot

# Removes 1 amo from the loader
scoreboard players remove @e[scores={1stCdShoot=..0,FightState=3}] 1stAmoLoaded 1

# Sets the time before the next shot
execute as @e[scores={1stCdShoot=..0,FightState=3}] run scoreboard players operation @s 1stCdShoot = @e[tag=Random,scores={Random=1..5},limit=1,sort=random] Random
execute as @e[scores={1stCdShoot=..0,FightState=3}] run scoreboard players operation @s 1stCdShoot += @s 1stFirerate
