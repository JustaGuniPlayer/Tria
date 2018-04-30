# AI Ground Combat: FightState/Shooting-Look (Look at the enemy)

tag @s add Source

execute at @s as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] TargetID run tp @e[tag=Source] ~ ~ ~ facing entity @s feet

tag @s remove Source