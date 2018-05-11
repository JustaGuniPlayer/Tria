
#Particles
particle explosion_emitter ~ ~ ~ 2 2 2 0.1 10 force
particle smoke ~ ~ ~ 2 2 2 0.2 100 force
particle block coal_block ~ ~ ~ 2 0 2 0.1 80 force

#Sounds
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1

#Degats
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..11] Health 4
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..9] Health 4
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..7] Health 4
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..5] Health 4
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..3] Health 4
scoreboard players remove @e[scores={Health=0},tag=!NoExplDamage,distance=..1] Health 4

#Animation Onde de Choc
scoreboard players set @a[distance=..14,scores={InVehicle=..0}] AnimExpl 3
scoreboard players set @a[distance=..9,scores={InVehicle=..0}] AnimExpl 6