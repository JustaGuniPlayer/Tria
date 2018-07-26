# Give Sulfateuse
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 1stWeapon 3

# Firerate and reload time
scoreboard players set @s 1stFirerate 1
scoreboard players set @s 1stReloadTime 160

# Loader Size
scoreboard players set @s 1stLoadCapacity 100

# Bullets Damages (20 = one heart)
scoreboard players set @s 1stWeaponDamage 20
scoreboard players set @s 1stHeadDamage 40

# Inaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Inaccuracy degrees)
scoreboard players set @s 1stInaccuracy 100

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 1stRecoil 30

# Other
scoreboard players set @s 1stAmoLoaded 0
scoreboard players add @s 1stCdShoot 0
scoreboard players add @s 1stReloading 0
