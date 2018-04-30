# AI Ground Combat: VisibilityTest/Kill

tag @s add Source

# If an AI in the Shooting FightState finds nothing with a test, it goes back to the Searching FightState
execute as @e[tag=AIFighting,scores={FightState=3}] if score @s ID = @e[tag=Source,limit=1] ID run scoreboard players set @s NewFightState 1

kill @s
