# AI Ground Combat: FightState/Shooting
# Called by ai/ground/combat/main

# Shoots
execute if entity @e[scores={1stCdShoot=..0,FightState=3}] run function tria:ai/ground/combat/fightstates/shooting-shoot

# Reloads
execute if entity @e[scores={1stAmoLoaded=..0,FightState=3}] run function tria:ai/ground/combat/fightstates/shooting-reload

# Exits safe zone 
tag @e[scores={1stCdShoot=20},tag=InSafeZone] add ExitSafeZone

# Small random movements
execute at @e[tag=Bullet,scores={Team=1}] positioned ~ ~-1 ~ run scoreboard players set @e[tag=CanBeShot,scores={Team=-1,FightState=3},distance=..2] SRmoves 10
execute at @e[tag=Bullet,scores={Team=-1}] positioned ~ ~-1 ~ run scoreboard players set @e[tag=CanBeShot,scores={Team=1,FightState=3},distance=..2] SRmoves 10

# Reload Animation
scoreboard players set @e[scores={1stCdShoot=40..,FightState=3}] gesture 2
scoreboard players set @e[scores={1stCdShoot=40..,FightState=3}] gestureTime 40

scoreboard players remove @e[scores={FightState=3}] 1stCdShoot 1