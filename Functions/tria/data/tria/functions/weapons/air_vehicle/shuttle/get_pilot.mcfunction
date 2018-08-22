# @s is one of the shuttles

tag @s add Source

execute as @a if score @s ID = @e[tag=Source,limit=1] TargetID run function tria:weapons/air_vehicle/shuttle/pilot_interactions

tag @s remove Source