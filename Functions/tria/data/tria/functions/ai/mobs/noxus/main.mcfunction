# Noxuses (sort of black wolves)

# Gets the health (the smallest value between the real health and the current score (that can change is it recieves a bullet))
execute as @e[tag=Noxus] store result score @s Var1 run data get entity @s Health 10
execute as @e[tag=Noxus] run scoreboard players operation @s Health < @s Var1

# Synchonizes minecraft's health with the health score
execute as @e[tag=Noxus] store result entity @s Health float 0.1 run scoreboard players get @s Health

# Detects changes in the health (damage taken). HeadDamage score is used to avoid creating millions of useless objectives
execute as @e[tag=Noxus] run scoreboard players operation @s Var1 = @s HeadDamage
execute as @e[tag=Noxus] run scoreboard players operation @s Var1 -= @s Health
execute as @e[tag=Noxus] run scoreboard players operation @s HeadDamage = @s Health
# Var1 is the damages taken, HeadDamage is the health in the previous tick

# If the noxus didn't take damages in the past second and has more than 60 hp, no blood effect (Timer1s gets stuck at 1)
scoreboard players set @e[tag=Noxus,scores={Timer1s=2,Health=60..,Var1=0}] Timer1s 1

# Blood effect
execute as @e[tag=Noxus,scores={Timer1s=2..20}] at @s run particle minecraft:block redstone_block ~ ~0.5 ~ 0.1 0.1 0.1 0.2 5 force
effect give @e[tag=Noxus,scores={Timer1s=2}] slowness 1 1 true

# Bites
tag @e remove BittenByNoxus
effect clear @a[tag=AttackedByNoxus,tag=!BittenByNoxus,tag=!Dead] blindness
effect clear @a[tag=AttackedByNoxus,tag=!BittenByNoxus] slowness
execute at @e[tag=Noxus] run tag @e[tag=AttackedByNoxus,tag=!Dead,distance=..2,limit=1,sort=nearest] add BittenByNoxus
execute if entity @e[tag=BittenByNoxus] run function tria:ai/mobs/noxus/bite

# Sheeps Management
#Tp
execute at @e[tag=AttackedByNoxus,tag=!Dead] positioned ~ ~3 ~ run tp @e[tag=NoxusTarget,distance=..3,limit=1,sort=nearest] ~ ~ ~
#Kill of doubles
scoreboard players set @e[tag=NoxusTarget] Var1 0
execute at @e[tag=AttackedByNoxus,tag=!Dead] positioned ~ ~3 ~ run scoreboard players set @e[tag=NoxusTarget,distance=..1,limit=1] Var1 1
scoreboard players set @e[tag=NoxusTarget,scores={Var1=0}] CanBeAlive 0
#Spawn of missing
scoreboard players set @e[tag=AttackedByNoxus] Var1 0
execute at @e[tag=NoxusTarget] positioned ~ ~-3 ~ run scoreboard players set @e[tag=AttackedByNoxus,distance=..1,limit=1] Var1 1
execute at @e[tag=AttackedByNoxus,tag=!Dead,scores={Var1=0}] run summon sheep ~ ~3 ~ {NoGravity:1b,Silent:1,Team:"Enemy",Health:1000000f,Tags:["CanBeAlive","Invisible","NoxusTarget"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:500,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}]}

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores: 


# Tags:
#Noxus: Identifier of noxuses
#NoxusTarget: Identifier of the sheeps used to attract noxuses
#Invisible: All entities with this tag become invisible (2 seconds update)