# AI Ground Movement: Follow Player: Tp

# Called when an AI is too far away from the player

# Each command has a store success on Var1, so if a command runs successfuly, the others wont run
scoreboard players set @s Var1 0

# Behind the player
execute at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^2 ^ ^-2 if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~
execute unless entity @s[scores={Var1=1}] at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^ ^ ^-2 if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~
execute unless entity @s[scores={Var1=1}] at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^-2 ^ ^-2 if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~

# On the sides of the player
execute unless entity @s[scores={Var1=1}] at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^2 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~
execute unless entity @s[scores={Var1=1}] at @s at @p[scores={ID=1..4}] align y positioned ~ ~0.5 ~ positioned ^-2 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough store success score @s Var1 run tp @s ~ ~ ~

# On an AI close the the player
execute unless entity @s[scores={Var1=1}] at @p[scores={ID=1..4}] store success score @s Var1 run tp @s @e[scores={ID=1..4},tag=MainAI,distance=..10,limit=1,sort=furthest]

# On the player
execute unless entity @s[scores={Var1=1}] at @p[scores={ID=1..4}] if block ~ ~ ~ #tria:cangothrough run tp @s @p[scores={ID=1..4}]

