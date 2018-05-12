# AI Ground Combat: Revive AI
# When a dead AI runs this, it will be revived

# Returns to the Searching Fight State
scoreboard players set @s NewFightState 1

execute at @s run tp @s ~ ~1.2 ~
data merge entity @s {NoGravity:0}
scoreboard players set @s ReviveTime 0
tag @s remove Dead

# Kills the villager
execute at @s positioned ~ ~0.8 ~ run scoreboard players set @e[tag=ReviveTarget,distance=..1,limit=1,sort=nearest] CanBeAlive 0