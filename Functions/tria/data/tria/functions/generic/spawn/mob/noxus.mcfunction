# Spawns a noxus (trianian sort of black wolf)

summon wolf ~ ~ ~ {Team:"Ally",Tags:["CanBeAlive","Timer1s","Noxus","InitNoxus","CanBeShot"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.4}]}

scoreboard players set @e[tag=InitNoxus] Health 200
scoreboard players set @e[tag=InitNoxus] SpecialHitbox 1
scoreboard players set @e[tag=InitNoxus] Team -1
execute as @e[tag=InitNoxus] run function tria:adaptedlib/entity/id/getsuid

tag @e remove InitNoxus

# They have the Team score to -1 to recieve bullets, but they are in the Ally team to prevent dead players from punching them
