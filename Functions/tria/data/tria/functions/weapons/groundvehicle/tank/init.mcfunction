#Path: tria:weapons/groundvehicle/tank/init

#System: Vehicle / Ground / Tank
#Author: A~Z

#Code:
tag @e[tag=tank, tag=!tank_init] add g_vehicle

scoreboard players set @e[tag=tank, tag=!tank_init] minSpeed 0100
scoreboard players set @e[tag=tank, tag=!tank_init] maxSpeed 0800

scoreboard players set @e[tag=tank, tag=!tank_init] acceleration 0010
scoreboard players set @e[tag=tank, tag=!tank_init] deceleration 0040

execute as @e[tag=tank, tag=!tank_init] run data merge entity @s {Silent:1}

tag @e[tag=tank, tag=!tank_init] add tank_init