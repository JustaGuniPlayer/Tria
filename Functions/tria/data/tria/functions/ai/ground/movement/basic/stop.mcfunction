# AI Basic Ground Movement: Stop

# Removes 1 to the MoveEndings counter
execute at @s run scoreboard players remove @e[tag=BMVillager,distance=..3,limit=1,sort=nearest] MoveEndings 1

# Stops the movement if the entity doesn't have the DontStopBM tag
tag @s[tag=!DontStopBM] remove BasicMoving

tag @s remove StopBM