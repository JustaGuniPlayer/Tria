# Ground Weapons / Shoot 1
# Shoots with the main weapon

# Shoots
tag @s add Shoot
tag @s[scores={1stWeapon=2}] add ShootShotgun

tag @s remove ExplosiveBullet
tag @s[tag=1stExplosive] add ExplosiveBullet
scoreboard players operation @s 1stCdShoot = @s 1stFirerate
scoreboard players operation @s WeaponDamage = @s 1stWeaponDamage
scoreboard players operation @s HeadDamage = @s 1stHeadDamage
scoreboard players operation @s Inaccuracy = @s 1stInaccuracy

# Recoil
tag @s add Recoil1

# Amo
scoreboard players remove @s 1stAmoLoaded 1

# Scope
scoreboard players operation @s[scores={Sneak=1}] Inaccuracy /= 2 Constant