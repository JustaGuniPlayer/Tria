# AI Ground Combat: FightState/Shooting-Look (Look at the enemy)

tag @s add Source

execute at @s as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] TargetID unless entity @s[scores={SpecialHitbox=1}] facing entity @s feet run tp @e[tag=Source] ~0.001 ~ ~ ~ ~
execute at @s positioned ~ ~1 ~ as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] TargetID if entity @s[scores={SpecialHitbox=1}] facing entity @s feet run tp @e[tag=Source] ~0.001 ~-1 ~ ~ ~

tag @s remove Source