
#Particles
particle explosion ~ ~ ~ 0 0 0 0.1 2 force
particle smoke ~ ~ ~ 1 1 1 0.2 60 force
particle block coal_block ~ ~ ~ 1.5 0 1.5 0.1 40 force

#Sounds
#playsound

#Degats
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..6] Health 3
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..5] Health 3
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..4] Health 3
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..3] Health 3
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..2] Health 3
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..1] Health 3

#Animation Onde de Choc
scoreboard players set @a[distance=..9,scores={InVehicle=..0}] AnimExpl 3
scoreboard players set @a[distance=..5,scores={InVehicle=..0}] AnimExpl 6