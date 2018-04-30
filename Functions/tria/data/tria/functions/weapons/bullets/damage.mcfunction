# Bullets Hits

# Damage
execute as @e[tag=CanBeShot,scores={Damage=1..}] run scoreboard players operation @s Health -= @s Damage

# Sound and particle
execute at @e[tag=CanBeShot,scores={Damage=1..}] positioned ~ ~1 ~ at @e[tag=Bullet,distance=..1] run particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 0.2 20 force
execute at @e[tag=CanBeShot,scores={Damage=1..}] run playsound minecraft:entity.villager.hurt ambient @a[distance=..8] ~ ~1 ~ 0.2

# Kills the bullet
execute as @e[tag=CanBeShot,scores={Damage=1..}] at @s positioned ~ ~1 ~ run kill @e[tag=Bullet,distance=..1.3]

scoreboard players set @e[tag=CanBeShot] Damage 0