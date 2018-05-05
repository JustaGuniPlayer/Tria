# Bullets 
# Made by: KubbyDev

# Unaccuracy
execute if entity @e[tag=Bullet,scores={Unaccuracy=1..}] run function tria:weapons/bullets/unaccuracy

# 2 Blocks/tick
function tria:weapons/bullets/move
function tria:weapons/bullets/move
function tria:weapons/bullets/move
function tria:weapons/bullets/move

# ------------------------------------------------
# How to use it:

# If an entity has the tag Bullet it will move forward

# Set the Unaccuracy score to randomize a bullet orientation. The maximum shift if 0.04 * Unaccuracy degrees

# Set the Damage score to define how many damages the bullet will deal.
# Set the DamageHead score to define how many damages the bullet will deal on headshot.

# Set the Team score to define which team the bullet should hit. -1 to hit the team of the player, 1 to hit the enemy team

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
#Unaccuracy: The unaccuracy of the weapon that fired a bullet. When this score is set on a bullet, it will randomize its orientation
#Random: used to generate a random number. There's 10 armor_stands with scores on Random from 1 to 10 (target them with @e[tag=Random,scores={Random=1..10},limit=1,sort=random]).
#Damage: stores the damage of a bullet. When on an AI, applies the damages
#DamageHead: stores the damage of a bullet in the head.
#Team: stores the team of an entity (team of the player: 1, enemy team: -1)
#Health: stores the health of an AI

#Tags:
#Bullet: Identifier of bullets
#CanBeShot: All the entities that can be shot by a bullet should have this tag
#BulletCollide: If a bullet has this tag, the system will determine if the collision is with a glass block or an iron_bars, and if not, do the actions when a bullet hits a wall
#BulletGlass: If a bullet has this tag, it will do the actions when a bullet hits a glass block
#BulletBars: If a bullet has this tag, it will do the actions when a bullet hits a iron_bars