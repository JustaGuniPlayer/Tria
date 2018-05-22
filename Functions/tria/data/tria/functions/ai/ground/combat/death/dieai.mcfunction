# AI Ground Combat: Die AI
# When a dead AI runs this, it will die (fall on the ground waiting to be revived)

# Goes to the Dead FightState
scoreboard players set @s NewFightState 7

execute at @s run tp @s ~ ~-1 ~
data merge entity @s {NoGravity:1}
scoreboard players set @s ReviveTime 0
scoreboard players set @s Health 400
scoreboard players set @s SRmoves 0
scoreboard players set @s Damage 0
scoreboard players set @s gestureTime 0
tag @s add Dead
tag @s remove CanBeShot

# Summons the target
execute at @s positioned ~ ~2 ~ run function tria:ai/ground/movement/basic/placetarget
execute at @s positioned ~ ~2 ~ run tag @e[tag=BMVillager,distance=..0.1,limit=1,sort=nearest] add ReviveTarget
scoreboard players set @e[tag=ReviveTarget] MoveEndings -1