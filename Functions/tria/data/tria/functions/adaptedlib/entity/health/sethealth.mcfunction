# NAME: Set Health
# PATH: gunivers-lib:entity/health/sethealth

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Health (score dummy)
# - HealthRead (score health)

# INPUT:
# - Health (score dummy)

# OUTPUT:
# - Health

# NOTE: <Note>
#
# /!\
# - This function must be executed every tick !
# - Don't forget to deal damage to the players once (to update the HealthRead score (Thanks Moajng :/))
# - Don't forget to turn off Natural Regeneration (/gamerule naturalRegeneration false) 
# /!\
#
# This function sets the player's health equal to his Health score

# CODE:

effect clear @a regeneration
effect clear @a poison
effect clear @a resistance

tag @a[scores={Health=..9}] add Health0
execute as @a[tag=Health0,nbt={OnGround:1b}] run function tria:generic/die
scoreboard players set @a[tag=Health0] Health 200

execute as @a run scoreboard players operation @s Var1 = @s Health
scoreboard players operation @a Var1 /= 10 Constant

execute as @a run scoreboard players operation @s Var1 -= @s HealthRead
execute as @a[scores={Var1=1..},tag=!Health0] run function tria:adaptedlib/entity/health/child/addhealth
execute as @a[scores={Var1=..-1},tag=!Health0] run function tria:adaptedlib/entity/health/child/removehealth