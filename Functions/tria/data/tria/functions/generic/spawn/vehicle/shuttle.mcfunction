
summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","Shuttle","InitShuttle","AirVehicle","NoGravity"],Marker:1,ActiveEffects:[{Id:25b,Amplifier:1b,Duration:10}]}

scoreboard players set @e[tag=InitShuttle] EnginePower 19
scoreboard players set @e[tag=InitShuttle] Friction 1038

tag @e remove InitShuttle