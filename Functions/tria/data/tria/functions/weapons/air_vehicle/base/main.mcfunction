# "Mother class" of all air (and space) vehicles

# Movement
execute as @e[tag=AirVehicle] store result entity @s Motion[0] double 0.001 run scoreboard players get @s VectorX
execute as @e[tag=AirVehicle] store result entity @s Motion[1] double 0.001 run scoreboard players get @s VectorY
execute as @e[tag=AirVehicle] store result entity @s Motion[2] double 0.001 run scoreboard players get @s VectorZ

# Alternative solution for movement
# execute as @e[tag=AirVehicle] store result score @s Var1 run data get entity @s Pos[0] 1000
# execute as @e[tag=AirVehicle] store result score @s Var2 run data get entity @s Pos[1] 1000
# execute as @e[tag=AirVehicle] store result score @s Var3 run data get entity @s Pos[2] 1000
# execute as @e[tag=AirVehicle] run scoreboard players operation @s Var1 += @s VectorX
# execute as @e[tag=AirVehicle] run scoreboard players operation @s Var2 += @s VectorY
# execute as @e[tag=AirVehicle] run scoreboard players operation @s Var3 += @s VectorZ
# execute as @e[tag=AirVehicle] store result entity @s Pos[0] double 0.001 run scoreboard players get @s Var1
# execute as @e[tag=AirVehicle] store result entity @s Pos[1] double 0.001 run scoreboard players get @s Var2
# execute as @e[tag=AirVehicle] store result entity @s Pos[2] double 0.001 run scoreboard players get @s Var3

# Teleports the pilot behind the vehicle and gets his orientation (TargetID stores the ID of the pilot)
execute as @e[tag=AirVehicle] run function tria:weapons/air_vehicle/base/get_pilot

# Adds a force following the player's orientation
tag @e[tag=AirVehicle] add GetForwardVector
function tria:adaptedlib/entity/vector/get_forward
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var1 *= @s EnginePower
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var2 *= @s EnginePower
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var3 *= @s EnginePower
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var1 /= 1000 Constant
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var2 /= 1000 Constant
execute as @e[tag=AirVehicle] run scoreboard players operation @s Var3 /= 1000 Constant
tag @e[tag=AirVehicle] remove GetForwardVector

# New velocity calculation
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorX += @s Var1
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorY += @s Var2
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorZ += @s Var3
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorX *= 1000 Constant
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorY *= 1000 Constant
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorZ *= 1000 Constant
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorX /= @s Friction
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorY /= @s Friction
execute as @e[tag=AirVehicle] run scoreboard players operation @s VectorZ /= @s Friction

# ------------------------------------------------
# How to use it:

# - The Vehicle must have a TargetID score, which is equal to the ID of its pilot

# - To create a new vehicle you have to define the engine power (acceleration strength) and the air resistance
# These values are directly linked to the max speed of the vehicle, and the time needed to get 95% of that speed.
# MaxSpeed is in milliblocks/tick; Time is in ticks (time to reach 95% of the max speed)
# So you have to define a MaxSpeed and a Time, then do these calculations
# and use the results to set the Friction and the EnginePower (these scores only have to be set once on each vehicle)

# Friction = exp(2.996/Time) * 1000
# EnginePower = (exp(2.996/Time)-1) * MaxSpeed

# - If you want to know what is the (MaxSpeed;Time) for a given (EnginePower;Friction), do these calculations:

# MaxSpeed = EnginePower/((Friction/1000)-1)
# Time = 2.996/ln(Friction/1000)

# The accuracy may not be perfect because the system uses integers

# ------------------------------------------------


