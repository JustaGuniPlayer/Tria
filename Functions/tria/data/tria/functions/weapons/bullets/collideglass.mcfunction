# Bullets / Collide Glass

# When a bullets touches an glass block, it will have 1/3 chances to break it

# Get a random number between 1 and 3
execute as @e[tag=BulletGlass] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..3},limit=1,sort=random] Random

# Makes a particle and a sound effect
execute as @e[tag=BulletGlass] at @s run playsound minecraft:block.glass.break ambient @a[distance=..50] ~ ~ ~ 0.7 0.8
execute as @e[tag=BulletGlass,scores={Random=1}] at @s run particle minecraft:block glass ~ ~ ~ 0 0 0 0.1 10 force

# If the number is 1 then breaks the glass
execute as @e[tag=BulletGlass,scores={Random=1}] at @s run setblock ~ ~ ~ minecraft:air destroy

tag @e[tag=BulletGlass] remove BulletCollide 
tag @e remove BulletGlass