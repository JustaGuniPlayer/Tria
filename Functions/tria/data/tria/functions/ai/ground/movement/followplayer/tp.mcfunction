# AI Ground Movement: Follow Player: Tp

# Called when an AI is too far away from the player

scoreboard players set @s Var1
execute at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^2 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~
execute unless entity @s[scores={Var1=1}] at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^-2 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~
execute unless entity @s[scores={Var1=1}] run tp @s @p[scores={ID=1..4}]


