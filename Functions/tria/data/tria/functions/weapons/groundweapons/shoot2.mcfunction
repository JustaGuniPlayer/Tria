# Ground Weapons / Shoot 2
# Shoots with the secondary weapon

# Shoots
tag @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] add Shoot
execute as @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] run scoreboard players operation @s 2ndCdShoot = @s 2ndFirerate
execute as @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] run scoreboard players operation @s WeaponDamage = @s 2ndWeaponDamage
execute as @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] run scoreboard players operation @s HeadDamage = @s 2ndHeadDamage
execute as @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] run scoreboard players operation @s Unaccuracy = @s 2ndUnaccuracy

# Recoil
tag @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] add Recoil2

# Amo
scoreboard players remove @a[tag=ShootInput2,scores={2ndAmoLoaded=1..}] 2ndAmoLoaded 1