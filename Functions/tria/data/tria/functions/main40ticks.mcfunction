#Main function
#Called every 2 seconds (by tria:main)

# Source entity is the armor_stand with tag Data

# ---- Global Systems -------------------------------------------------------------------------------------

#Languages
tag @a remove FRA
tag @a remove ENG
execute if entity @e[name=Data,type=armor_stand,tag=ENG] run tag @a add ENG
execute if entity @e[name=Data,type=armor_stand,tag=FRA] run tag @a add FRA

#Effects
effect give @e[tag=Invisible] invisibility 3 0 true



