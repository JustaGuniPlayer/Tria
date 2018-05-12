# AI Ground Combat: FightState/Shooting-Reload 

# Searches for a safe zone to reload
tag @e[scores={1stAmoLoaded=..0,FightState=3}] add SafeZoneReload

# Starts a visibility test, if it fails, goes back to the Searching Fight State
tag @e[scores={1stAmoLoaded=..0,FightState=3}] add StartVisTest

# Reload
execute as @e[scores={1stAmoLoaded=..0,FightState=3}] run scoreboard players operation @s 1stCdShoot = @s 1stReloadTime
execute as @e[scores={1stAmoLoaded=..0,FightState=3}] run scoreboard players operation @s 1stAmoLoaded = @s 1stLoadCapacity
