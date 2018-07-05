
# Explosions
scoreboard players remove @e[tag=Grenade] GrenadeCooldown 1
execute at @e[tag=Grenade,scores={GrenadeCooldown=0}] run function tria:generic/explosions/smallexpl
kill @e[tag=Grenade,scores={GrenadeCooldown=0}]
 
# Additionnal behaviors
execute if entity @e[tag=Grenade_Sticky] run function tria:weapons/grenades/sticky/main