# Shoots

# Summons the bullet
execute at @s run summon armor_stand ~ ~ ~ {Tags:["BulletCollisions","DealDamages","Projectile","Bullet","InitBulletShuttle","CanBeAlive","OptimisedProjectile"],NoGravity:1,Marker:1,Invisible:1}

# Teleports it to the shooter
tp @e[tag=InitBulletShuttle] @s

# Informations transfert
scoreboard players set @e[tag=InitBulletShuttle] Damage 200
scoreboard players operation @e[tag=InitBulletShuttle] Team = @s Team
scoreboard players set @e[tag=InitBulletShuttle] Inaccuracy 10

# Lives 1 seconds
scoreboard players set @e[tag=InitBulletShuttle] CanBeAlive -20 

# Speed = 6 blocks / tick
scoreboard players set @e[tag=InitBulletShuttle] ProjectileSpeed 12

# Teleports the bullet to the height of the head of the shooter
execute as @e[tag=InitBulletShuttle] at @s run tp @s ~ ~1.60 ~

# Sound effect
execute at @s positioned ^ ^ ^1 run playsound minecraft:entity.firework_rocket.blast_far ambient @a[distance=..50] ~ ~ ~ 4

tag @e remove InitBulletShuttle