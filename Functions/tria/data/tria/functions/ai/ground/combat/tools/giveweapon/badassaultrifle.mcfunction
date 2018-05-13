# AI Ground Combat: Give Bad Assault Rifle
# Gives a weapon to the source entity

# Firerate and reload time
scoreboard players set @s 1stFirerate 1
scoreboard players set @s 1stReloadTime 80

# Loader Size
scoreboard players set @s 1stLoadCapacity 8

# Bullets Damages (20 = one heart)
scoreboard players set @s WeaponDamage 50
scoreboard players set @s HeadDamage 80

# The unaccuracy of the weapon, the higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Unaccuracy degrees)
scoreboard players set @s Unaccuracy 50

# Display
replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:"AR"}} 1

# Other
scoreboard players operation @s 1stAmoLoaded = @s 1stLoadCapacity