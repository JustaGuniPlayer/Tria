# Bullets / Collide Bars

# When a bullets touches an iron_bars block, it will have 1/3 chances to hit a bar and be killed

# Get a random number between 1 and 3
execute as @e[tag=BulletBars] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..3},limit=1,sort=random] Random

# If the number is 1 then makes a sound and a particle and kills the bullet
execute as @e[tag=BulletBars,scores={Random=1}] at @s run playsound minecraft:block.anvil.place ambient @a[distance=..50] ~ ~ ~ 0.9
execute as @e[tag=BulletBars,scores={Random=1}] at @s run particle minecraft:block end_rod ~ ~ ~ 0 0 0 0 10 force
kill @e[tag=BulletBars,scores={Random=1}]

tag @e[tag=BulletBars] remove BulletCollide 
tag @e remove BulletBars

