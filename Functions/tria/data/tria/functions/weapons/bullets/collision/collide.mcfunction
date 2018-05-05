# Bullets Collisions with Walls

execute at @e[tag=BulletCollide] run particle minecraft:block stone ~ ~ ~ 0 0 0 0.1 10 force
execute at @e[tag=BulletCollide] run playsound minecraft:block.stone.break ambient @a[distance=..50] ~ ~ ~ 0.5

kill @e[tag=BulletCollide]