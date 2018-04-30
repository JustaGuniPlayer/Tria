
tag @s add HugeExpl
scoreboard players set @s Timer1s 0
tag @s add Timer1s

#Sounds
#playsound

#Degats
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..16] Health 6
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..13] Health 6
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..10] Health 6
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..7] Health 6
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..4] Health 6
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..1] Health 6

#Animation Onde de Choc
scoreboard players set @a[distance=..27,scores={InVehicle=..0}] AnimExpl 3
scoreboard players set @a[distance=..17,scores={InVehicle=..0}] AnimExpl 6