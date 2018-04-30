# Give FAMAS du turfu
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 1stWeapon 1

# Firerate and reload time
scoreboard players set @s 1stFirerate 1
scoreboard players set @s 1stReloadTime 60

# Loader Size
scoreboard players set @s 1stLoadCapacity 16

# Bullets Damages
scoreboard players set @s 1stWeaponDamage 5
scoreboard players set @s 1stHeadDamage 8

# Unaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Unaccuracy degrees)
scoreboard players set @s 1stUnaccuracy 15

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 1stRecoil 10

# Other
scoreboard players operation @s 1stAmoLoaded = @s 1stLoadCapacity
scoreboard players add @s 1stCdShoot 0
scoreboard players add @s 1stReloading 0
