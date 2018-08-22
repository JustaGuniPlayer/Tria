# Weapons/Canon : Main

# Laser Shooting
execute if entity @e[tag=CanonRay] run function tria:weapons/canon/buildray

# Laser Particles
execute if entity @e[tag=RayParticles] run function tria:weapons/canon/rayparticles

# Timer
scoreboard players remove @e[scores={CanonLoadTime=1..},tag=LoadCanon] CanonLoadTime 1

# Bullet Shooting
execute if entity @e[scores={CanonLoadTime=1}] run function tria:weapons/canon/initbullet

# Bullet Explosion
execute if entity @e[tag=CanonBullet] run function tria:weapons/canon/bullet

# ------------------------------------------------
# How to use it:

# Summon an entity at the start position of the ray, facing the end position of the ray
# Set the CanonLoadTime score on your entity to set the time between the laser shooting and the bullet shooting
# execute as YourEntity at @s run function tria:weapons/canon/shoot

# Warning: make sure the impact point is a thick wall (3 blocks), otherwise the ray can go through it
# The blocks which are not considered as walls are the blocks in #tria:transparent

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
# CanonLoadTime: The time between the laser shooting and the bullet shooting

#Tags:
# CanonRay: Identifier of the entity that draws the ray
# RayParticles: Identifier of the entities that place the particles
# CanonBullet: Identifier of the bullet
# CanonExplode: When the CanonBullet has this tag, it will be kill and will summon an entity to make a huge
# LoadCanon: This tag is given during the loading time of the canon