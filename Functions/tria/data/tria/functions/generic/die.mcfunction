# Player death

execute at @s run tp @s ~ ~-0.9 ~
scoreboard players set @s ReviveTime 0
scoreboard players set @s Health 200
tag @s add Dead
tag @s remove CanBeShot
execute as @s at @s run playsound minecraft:entity.player.hurt ambient @s

# Summons the target
execute at @s positioned ~ ~1 ~ run function tria:ai/ground/movement/basic/placetarget
execute at @s positioned ~ ~1 ~ run tag @e[tag=BMVillager,distance=..0.1,limit=1,sort=nearest] add ReviveTarget
scoreboard players set @e[tag=ReviveTarget] MoveEndings -1