# AI Ground Combat: Give Bad Assault Rifle
# Gives a weapon to the source entity

# Firerate and reload time
scoreboard players set @s 1stFirerate 0
scoreboard players set @s 1stReloadTime 80

# Loader Size
scoreboard players set @s 1stLoadCapacity 1

# Bullets Damages (20 = one heart)
scoreboard players set @s WeaponDamage 100
scoreboard players set @s HeadDamage 150

# The inaccuracy of the weapon, the higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Inaccuracy degrees)
scoreboard players set @s Inaccuracy 10

# Explosive (if this tag is given, the weapon will shoot explosive bullets)
tag @s add ExplosiveBullet

# Display
replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:"RPG"}} 1

# Other
scoreboard players operation @s 1stAmoLoaded = @s 1stLoadCapacity