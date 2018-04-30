# AI Basic Ground Movement: Zombies Regulation

# Zombies killing
scoreboard players set @e[tag=BMZombie] Var1 1
execute at @e[tag=BasicMoving,tag=FollowPlayer] run scoreboard players set @e[tag=BMZombie,tag=FPZombie,distance=..0.1,limit=1,sort=nearest] Var1 0
execute at @e[tag=BasicMoving,tag=!FollowPlayer] run scoreboard players set @e[tag=BMZombie,tag=!FPZombie,distance=..0.1,limit=1,sort=nearest] Var1 0
execute as @e[tag=BMZombie,scores={Var1=1}] at @s run tp @s ~ -200 ~
kill @e[tag=BMZombie,scores={Var1=1}]

# Zombies spawning
scoreboard players set @e[tag=BasicMoving] Var1 1
execute at @e[tag=BMZombie] run scoreboard players set @e[tag=BasicMoving,distance=..0.1,limit=1,sort=nearest] Var1 0
execute as @e[tag=BasicMoving,scores={Var1=1}] run function tria:ai/ground/movement/basic/spawnzombie
