# Grenades
# Give Velocity

# Gets the forward vector
function gunivers-lib:entity/vector/get_by_actual_orientation

# Converts it to a motion
execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s VectorX
execute store result entity @s Motion[1] double 0.003 run scoreboard players get @s VectorY
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s VectorZ