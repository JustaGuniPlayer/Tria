# Ground Weapons / Shoot 1
# Shoots with the main weapon

# Shoots
tag @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] add Shoot
tag @a[tag=ShootInput1,scores={1stAmoLoaded=1..,1stWeapon=2}] add ShootShotgun
execute as @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] run scoreboard players operation @s 1stCdShoot = @s 1stFirerate
execute as @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] run scoreboard players operation @s WeaponDamage = @s 1stWeaponDamage
execute as @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] run scoreboard players operation @s HeadDamage = @s 1stHeadDamage
execute as @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] run scoreboard players operation @s Unaccuracy = @s 1stUnaccuracy

# Recoil
tag @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] add Recoil1

# Amo
scoreboard players remove @a[tag=ShootInput1,scores={1stAmoLoaded=1..}] 1stAmoLoaded 1