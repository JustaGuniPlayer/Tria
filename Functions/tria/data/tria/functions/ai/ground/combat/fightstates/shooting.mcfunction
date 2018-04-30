# AI Ground Combat: FightState/Shooting
# Called by ai/ground/combat/main

# Shoots
execute if entity @e[scores={1stCdShoot=..0,FightState=3}] run function tria:ai/ground/combat/fightstates/shooting-shoot

# Reloads
execute if entity @e[scores={1stAmoLoaded=..0,FightState=3}] run function tria:ai/ground/combat/fightstates/shooting-reload

# Exits safe zone 
tag @e[scores={1stCdShoot=20},tag=InSafeZone] add ExitSafeZone

scoreboard players remove @e[scores={FightState=3}] 1stCdShoot 1