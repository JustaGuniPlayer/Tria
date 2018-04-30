# AI Ground Combat: Search Bullets
# Searches for enemy bullets nearby
# If it finds one, it sets the TargetID score equal to the ID of the bullet which is equal to the ID of the shooter.

execute as @e[tag=SearchBullet,scores={Team=-1}] at @s positioned ~ ~1 ~ run scoreboard players operation @s TargetID = @e[tag=Bullet,scores={Team=1},distance=..1.2,limit=1,sort=nearest] ID
execute as @e[tag=SearchBullet,scores={Team=1}] at @s positioned ~ ~1 ~ run scoreboard players operation @s TargetID = @e[tag=Bullet,scores={Team=-1},distance=..1.2,limit=1,sort=nearest] ID