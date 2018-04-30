# AI Ground Combat: VisibilityTest/FoundTarget

tag @s add Source

# Identifies the enemy
scoreboard players set @e Var1 0
execute at @s[scores={Team=1}] run scoreboard players set @e[tag=CanBeShot,scores={Team=-1},distance=..2,limit=1,sort=nearest] Var1 1 
execute at @s[scores={Team=-1}] run scoreboard players set @e[tag=CanBeShot,scores={Team=1},distance=..2,limit=1,sort=nearest] Var1 1 

# Passes the ID of the enemy to the TargetID of the shooter
execute as @e[tag=CanBeShot] if score @s ID = @e[tag=Source,limit=1] ID run scoreboard players operation @s TargetID = @e[scores={Var1=1},limit=1] ID

kill @s
