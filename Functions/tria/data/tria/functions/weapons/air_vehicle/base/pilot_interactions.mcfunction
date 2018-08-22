# @e[tag=Source] is one of the air vehicles, @s is its pilot

# Transfers the orientation
execute store result entity @e[tag=Source,limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000
execute store result entity @e[tag=Source,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000

# Teleports the pilot
execute rotated as @e[tag=Source,limit=1] at @e[tag=Source,limit=1] run tp @s ^ ^ ^-4

# Effects
effect give @s minecraft:speed 1 3 true
effect give @s minecraft:levitation 1 255 true