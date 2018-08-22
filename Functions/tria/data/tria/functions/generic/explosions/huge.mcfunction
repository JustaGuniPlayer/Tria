
tag @s add HugeExpl
scoreboard players set @s Timer1s 0
tag @s add Timer1s

#Sounds
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 5

#Degats
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..16] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..13] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..10] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..7] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..4] Health 40
scoreboard players remove @e[scores={Health=1..},tag=!NoExplDamage,distance=..1] Health 40

#Animation Onde de Choc
scoreboard players set @a[distance=..27,scores={InVehicle=..0}] AnimExpl 3
scoreboard players set @a[distance=..17,scores={InVehicle=..0}] AnimExpl 6