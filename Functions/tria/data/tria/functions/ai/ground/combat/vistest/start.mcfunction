# AI Ground Combat: VisibilityTest/Start

# Summons the fake bullet
execute at @e[tag=StartVisTest,tag=!BlockVisTests] run summon armor_stand ~ ~ ~ {Tags:["InitVisTest","VisTest","CanBeAlive"],NoGravity:1,Invisible:1,Marker:1}

# Sets the ID of the fake bullet equal to the ID of the shooter
execute as @e[tag=InitVisTest] at @s run scoreboard players operation @s ID = @e[tag=StartVisTest,tag=!BlockVisTests,distance=..0.1,limit=1,sort=nearest] ID
execute as @e[tag=InitVisTest] at @s run scoreboard players operation @s Team = @e[tag=StartVisTest,tag=!BlockVisTests,distance=..0.1,limit=1,sort=nearest] Team
execute as @e[tag=InitVisTest] at @s run scoreboard players operation @s TargetID = @e[tag=StartVisTest,tag=!BlockVisTests,distance=..0.1,limit=1,sort=nearest] TargetID

# Make the fake bullet look at an enemy. If the shooter has a target, it will be this one, otherwise, it chooses a random one
# If the shooter is an enemy it has 1/2 chances of choosing a player, and 1/2 chances of choosing an AI
execute as @e[tag=InitVisTest,scores={Team=1,TargetID=0,Random=1}] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..2},limit=1,sort=random] Random
execute as @e[tag=InitVisTest,scores={Team=1,TargetID=0,Random=1}] at @s run scoreboard players operation @s TargetID = @e[type=!player,tag=CanBeShot,scores={Team=-1},distance=..80,limit=1,sort=random] ID
execute as @e[tag=InitVisTest,scores={Team=1,TargetID=0,Random=2}] at @s run scoreboard players operation @s TargetID = @e[type=player,tag=CanBeShot,scores={Team=-1},distance=..80,limit=1,sort=random] ID
execute as @e[tag=InitVisTest,scores={Team=-1,TargetID=0}] at @s run scoreboard players operation @s TargetID = @e[tag=CanBeShot,scores={Team=1},distance=..80,limit=1,sort=random] ID

# Stops the test if there is no target
kill @e[tag=InitVisTest,scores={TargetID=0}]

# Looks at the enemy
execute as @e[tag=InitVisTest] at @s run tp @s ~ ~1.65 ~
execute as @e[tag=InitVisTest] at @s run function tria:ai/ground/combat/vistest/start-child

# Lives 1 second
scoreboard players set @e[tag=InitVisTest] CanBeAlive -20

tag @e remove InitVisTest
