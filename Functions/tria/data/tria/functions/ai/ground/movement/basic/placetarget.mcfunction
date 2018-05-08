# AI Basic Ground Movement: Place Target

summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"Enemy",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:10000000f,CareerLevel:1,Tags:["BMVillager","BMInitVillager","Invisible","CanBeAlive"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:80,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:10000000},{Name:generic.followRange,Base:0},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}

#Initialisation
scoreboard players set @e[tag=BMInitVillager] MoveEndings 1
tag @e remove BMInitVillager