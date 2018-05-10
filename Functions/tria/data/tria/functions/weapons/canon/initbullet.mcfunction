# Weapons/Canon : Init Bullet

# Summons the bullet
execute as @e[scores={CanonLoadTime=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["CanonBullet","CanBeAlive","InitCanonBullet"],NoGravity:1,Marker:1,Invisible:1}

# Initialisation
execute as @e[scores={CanonLoadTime=1}] at @s run tp @e[tag=InitCanonBullet,distance=..0.2,limit=1,sort=nearest] @s
execute as @e[tag=InitCanonBullet] at @s run tp @s ~ ~1.6 ~
tag @e remove InitCanonBullet

# Preparation of an eventual second shot
tag @e[scores={CanonLoadTime=1}] remove LoadCanon
scoreboard players set @e[scores={CanonLoadTime=1}] CanonLoadTime 0