# Shoots

# Summons the bullet
execute at @s run summon armor_stand ~ ~ ~ {Tags:["ShellCollisions","GuidedMissile","DealDamages","Projectile","InitMissileShuttle","CanBeAlive","OptimisedProjectile"],NoGravity:1,Marker:1,Invisible:0}

# Teleports it to the shooter
tp @e[tag=InitMissileShuttle] @s

# Informations transfert
scoreboard players set @e[tag=InitMissileShuttle] Damage 200
scoreboard players operation @e[tag=InitMissileShuttle] Team = @s Team

# Lives 1 seconds
scoreboard players set @e[tag=InitMissileShuttle] CanBeAlive -80 

# Speed = 2 blocks / tick
scoreboard players set @e[tag=InitMissileShuttle] ProjectileSpeed 4

# Teleports the bullet to the height of the head of the shooter
execute as @e[tag=InitMissileShuttle] at @s run tp @s ~ ~1.60 ~

# Sound effect
execute at @s positioned ^ ^ ^1 run playsound minecraft:entity.firework_rocket.blast_far ambient @a[distance=..50] ~ ~ ~ 4

tag @e remove InitMissileShuttle