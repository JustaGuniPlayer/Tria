# AI Basic Ground Movement: To On Zombie

tag @s add Source

# Detects if the zombie is moving
execute at @s as @e[tag=BMZombie,distance=..0.01] if score @s ID = @e[tag=Source,limit=1] ID run scoreboard players set @e[tag=Source] Walking 0

# Teleports
execute as @e[tag=BMZombie] if score @s ID = @e[tag=Source,limit=1] ID run tp @e[tag=Source] @s

tag @s remove Source