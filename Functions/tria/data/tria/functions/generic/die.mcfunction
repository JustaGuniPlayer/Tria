# Player death

execute at @s run tp @s ~ ~-1 ~
scoreboard players set @s ReviveTime 0
scoreboard players set @s Health 60
tag @s add Dead
tag @s add LockWeapons
tag @s remove CanBeShot
tag @s remove Health0
execute as @s at @s run playsound minecraft:entity.player.hurt ambient @s
effect give @s blindness 3 0 true
effect give @s weakness 10000 255 true
gamemode spectator @s

# Summons the target
execute at @s positioned ~ ~2 ~ run function tria:ai/ground/movement/basic/placetarget
execute at @s positioned ~ ~2 ~ run tag @e[tag=BMVillager,distance=..0.1,limit=1,sort=nearest] add ReviveTarget
scoreboard players set @e[tag=ReviveTarget] MoveEndings -1

#The gamemode spectator is only set for one tick, to tell wolves to stop attacking