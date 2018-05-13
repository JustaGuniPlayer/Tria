# AI Ground Combat: FightState/Shooting - Target Alive

tag @s add Source

execute as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] TargetID run tag @e[tag=Source] add TargetAlive

tag @s remove Source