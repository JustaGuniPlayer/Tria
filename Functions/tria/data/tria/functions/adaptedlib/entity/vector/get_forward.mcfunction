# Gets a vector with a length of 1000 facing the same direction as each entity

# Entities using this system must have the GetForwardVector tag

execute as @e[tag=GetForwardVector] store result score @s Var4 run data get entity @s Pos[0] 1000
execute as @e[tag=GetForwardVector] store result score @s Var5 run data get entity @s Pos[1] 1000
execute as @e[tag=GetForwardVector] store result score @s Var6 run data get entity @s Pos[2] 1000

execute as @e[tag=GetForwardVector] run function tria:adaptedlib/entity/vector/get_forward_child

execute as @e[tag=GetForwardVector] run scoreboard players operation @s Var1 -= @s Var4
execute as @e[tag=GetForwardVector] run scoreboard players operation @s Var2 -= @s Var5
execute as @e[tag=GetForwardVector] run scoreboard players operation @s Var3 -= @s Var6

kill @e[tag=GetVec,type=armor_stand]