# Called on the player when he leaves a shuttle

tag @s add Source

execute as @e[tag=Shuttle] if score @s TargetID = @e[tag=Source,limit=1] ID run scoreboard players set @s TargetID 0
tag @s remove NoExplDamages
scoreboard players set @s HotbarState 0

tag @s remove Source