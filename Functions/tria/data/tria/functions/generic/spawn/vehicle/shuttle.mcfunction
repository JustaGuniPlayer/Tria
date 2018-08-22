
summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","Shuttle","InitShuttle","AirVehicle","NoGravity"],Marker:1,ActiveEffects:[{Id:25b,Amplifier:1b,Duration:10}]}

scoreboard players set @e[tag=InitShuttle] EnginePower 45
scoreboard players set @e[tag=InitShuttle] Friction 1030

tag @e remove InitShuttle