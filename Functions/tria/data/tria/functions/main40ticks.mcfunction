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

#Gesture Initialisation
scoreboard players add @e gestureTime 0
execute as @e[type=!player] unless entity @s[scores={gestureSpeed=1..}] run scoreboard players set @s gestureSpeed 1

#Scores Initialisations
scoreboard players add @a Order 0

