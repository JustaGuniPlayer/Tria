# Player revive

execute at @s run tp @s ~ ~1.2 ~
scoreboard players set @s ReviveTime 0
tag @s remove Dead
tag @s remove LockWeapons
tag @s add CanBeShot
effect clear @s blindness

# Kills the villager
execute at @s positioned ~ ~0.8 ~ run scoreboard players set @e[tag=ReviveTarget,distance=..1,limit=1,sort=nearest] CanBeAlive 0