# Called on the player when he enters in a shuttle

# This command can not be more accurate because apparently on the tick the player enters on the horse
# he still has his old position but not his old rotation
execute at @s run scoreboard players operation @e[tag=Shuttle,distance=..6,limit=1,sort=nearest] TargetID = @s ID

tag @s add NoExplDamages
scoreboard players set @s HotbarState 200