#Main function
#Called every tick (by the command block at 0 99 0)

# Source entity is the armor_stand with tag Data

# Important tags and scores:
# Score ID: 0: lobby, 1: player 1, 2: player 2, 3: player 3, 4: player 4, 5+: other entities ID

# ---- Global Systems -------------------------------------------------------------------------------------

#Timers
#The Timer2s on every entity that has the tag Timer2s runs from 1 to 40 constantly
#The Timer1s on every entity that has the tag Timer1s runs from 1 to 20 constantly
#The Timer10ticks on every entity that has the tag Timer10ticks runs from 1 to 10 constantly
scoreboard players add @e[tag=Timer2s] Timer2s 1
scoreboard players set @e[scores={Timer2s=41..},tag=Timer2s] Timer2s 1
scoreboard players add @e[tag=Timer1s] Timer1s 1
scoreboard players set @e[scores={Timer1s=21..},tag=Timer1s] Timer1s 1
scoreboard players add @e[tag=Timer10ticks] Timer10ticks 1
scoreboard players set @e[scores={Timer10ticks=11..},tag=Timer10ticks] Timer10ticks 1
scoreboard players add @e[tag=Timer5ticks] Timer5ticks 1
scoreboard players set @e[scores={Timer5ticks=6..},tag=Timer5ticks] Timer5ticks 1

#Slow update mains
execute if entity @s[scores={Timer2s=25}] run function tria:main40ticks
execute if entity @s[scores={Timer1s=15}] run function tria:main20ticks 
execute if entity @s[scores={Timer10ticks=10}] run function tria:main10ticks 
execute if entity @s[scores={Timer5ticks=3}] run function tria:main5ticks 

#Useless Entities Kill 
#Tags: Perm = Permanent, CanBeAlive = Kill on next reset
#Other Life times: LifeTimeInTicks * -1 on the CanBeAlive objective
scoreboard players add @e CanBeAlive 0
scoreboard players set @e[tag=CanBeAlive,scores={CanBeAlive=0..}] CanBeAlive 1
tag @e remove CanBeAlive
scoreboard players set @e[tag=Perm] CanBeAlive 1
scoreboard players add @e[scores={CanBeAlive=..-1}] CanBeAlive 1 
execute as @e[scores={CanBeAlive=0},type=!player] at @s run tp @s ~ -200 ~
kill @e[scores={CanBeAlive=0},type=!player]

# ---- Story ----------------------------------------------------------------------------------------------

#TEMPORAIRE: Apres ce sera dans les fichiers de chaque chapitre
function tria:ai/ground/actfight
function tria:weapons/groundweapons/main

# ---- Weapons --------------------------------------------------------------------------------------------

#Shoot
execute if entity @e[tag=Shoot] run function tria:weapons/bullets/shoot

#Bullets movement, damage and collisions
execute if entity @e[tag=Bullet] run function tria:weapons/bullets/main

# ---- Other ----------------------------------------------------------------------------------------------

#Explosions
#You can make any entity explode by running Tria:Generic/Explosions/(Small/Big/Huge)Expl on it
execute as @e[tag=HugeExpl] run function tria:generic/explosions/hugeexplparticles
execute if entity @a[scores={AnimExpl=1..}] run function tria:generic/explosions/animexpl

#Effects
execute as @e[tag=NoFire] run data merge entity @s {Fire:0}

#Input Detections Reset
scoreboard players set @e Walking 0
scoreboard players set @e Drop 0
scoreboard players set @e UseCarrot 0