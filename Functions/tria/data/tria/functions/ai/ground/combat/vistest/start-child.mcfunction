# AI Ground Combat: VisibilityTest/Start-Child

# Teleports the source facing the enemy that has the ID stored in the source's TargetID
tag @s add Source
execute as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] TargetID run tp @e[tag=Source,limit=1] ~ ~0.001 ~ facing entity @s eyes
tag @s remove Source