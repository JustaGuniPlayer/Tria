# Kill

# Called for unimportant AIs

execute if entity @s[scores={Team=-1}] run scoreboard players set @e[tag=AIHitbox,distance=..1.1,limit=1,sort=nearest] CanBeAlive 0
tp @s ~ ~-1 ~
data merge entity @s {NoGravity:1}
scoreboard players set @s CanBeAlive -40
scoreboard players set @s FightState 0
scoreboard players set @s SRmoves 0
scoreboard players set @s gestureTime 0
tag @s remove AIFighting
tag @s remove CanBeShot

particle cloud ~ ~ ~ 0 1 0 0.03 20 force