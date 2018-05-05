# AI Ground Combat: Die AI
# When a dead AI runs this, it will die (fall on the ground waiting to be revived)

# Goes to the Dead FightState
scoreboard players set @s NewFightState 7

execute at @s run tp @s ~ ~-0.9 ~
data merge entity @s {NoGravity:1}
scoreboard players set @s ReviveTime 0
scoreboard players set @s Health 600
tag @s add Dead

# Summons the target
execute at @s positioned ~ ~1 ~ run function tria:ai/ground/movement/basic/placetarget
execute at @s positioned ~ ~1 ~ run tag @e[tag=BMVillager,distance=..0.1,limit=1,sort=nearest] add ReviveTarget
scoreboard players set @e[tag=ReviveTarget] MoveEndings -1