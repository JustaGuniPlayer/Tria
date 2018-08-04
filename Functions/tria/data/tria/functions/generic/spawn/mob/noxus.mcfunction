# Spawns a noxus (trianian sort of black wolf)

summon wolf ~ ~ ~ {Team:"Ally",Tags:["CanBeAlive","Timer1s","Noxus","InitNoxus"],Attributes:[{Name:generic.knockbackResistance,Base:1}]}

scoreboard players set @e[tag=InitNoxus] Health 200