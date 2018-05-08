# AI Basic Ground Movement: Start

tag @s add Source

# Summon the zombie
execute at @s run summon zombie ~ ~ ~ {Silent:1b,Team:"Ally",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10000000f,IsBaby:0b,CanBreakDoors:0b,Tags:["BMZombie","BMInitZombie","Invisible","CanBeAlive","NoFire"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:60,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:10000000},{Name:generic.followRange,Base:128},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.35},{Name:generic.attackDamage,Base:0}]}

# Initialisation
execute as @e[tag=BMInitZombie] at @s run scoreboard players operation @s ID = @e[tag=Source] ID
execute as @s[tag=FollowPlayer] run team join Enemy @e[tag=BMInitZombie]
execute as @s[tag=FollowPlayer] run tag @e[tag=BMInitZombie] add FPZombie
tag @e remove BMInitZombie

tag @s remove Source