
#Particles
particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 3 force
particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 15 force
particle block coal_block ~ ~ ~ 1 0 1 0.1 3 force

#Sounds
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1

#Degats
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..3] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..2] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..1] Health 40

#Animation Onde de Choc
scoreboard players set @a[distance=..5,scores={InVehicle=..0}] AnimExpl 3