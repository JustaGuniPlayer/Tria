# AI Ground Combat: Init AI

# Goes to Research FightState
scoreboard players set @s NewFightState 1

# Gives a weapon
function tria:ai/ground/combat/tools/giveweapon/badassaultrifle

# Gives an ID
execute unless entity @s[scores={ID=1..}] run function tria:adaptedlib/entity/id/getsuid

# Necessary tags and scores
tag @s add AIFighting
scoreboard players set @s Health 20
