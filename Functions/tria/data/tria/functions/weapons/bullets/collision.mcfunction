# Bullets / Collision

# When a bullet enter in collision with something, this system determines if it's a iron_bars, a glass block, or something else

execute as @e[tag=BulletCollide] at @s if block ~ ~ ~ #tria:glass run tag @s add BulletGlass
execute as @e[tag=BulletCollide] at @s if block ~ ~ ~ minecraft:iron_bars run tag @s add BulletBars
execute if entity @e[tag=BulletBars] run function tria:weapons/bullets/collision/collidebars
execute if entity @e[tag=BulletGlass] run function tria:weapons/bullets/collision/collideglass
execute if entity @e[tag=BulletCollide] run function tria:weapons/bullets/collision/collide
