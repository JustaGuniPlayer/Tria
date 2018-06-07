# AI Basic Ground Movement: Main
# Made by: KubbyDev

# Walking detection and tp on the zombie
scoreboard players set @e[tag=BasicMoving] Walking 10
execute as @e[tag=BasicMoving] run function tria:ai/ground/movement/basic/tponzombie

# Animation
scoreboard players set @e[type=armor_stand,scores={Walking=1..},tag=BasicMoving] gesture 3
scoreboard players set @e[type=armor_stand,scores={Walking=1..},tag=BasicMoving] gestureTime 5

# When the target is reached
execute at @e[tag=BMVillager] run tag @e[tag=BasicMoving,distance=..3] add StopBM

# Movement stop
execute as @e[tag=StopBM] run function tria:ai/ground/movement/basic/stop

scoreboard players set @e[tag=BMVillager,scores={MoveEndings=0}] CanBeAlive 0

# ------------------------------------------------
# How to use it:

# To summon a target, use this command: execute positioned (coordinates) run function tria:ai/ground/movement/basic/placetarget
# To start a movement, add the BasicMoving tag to any entity.

# If you don't want the movement to be stopped when the target is reached, add the DontStopBM tag
# By default, a target is killed when it stops one movement, you can set this number by modifying the MoveEndings score (-1 = unlimited)

# To force the stop, remove the BasicMoving tag

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
#ID: Identifier of an entity (each AI has its own ID, but its bullets have the same ID as the AI that shot it).
#Walking (minecraft.custom:minecraft.walk_one_cm): Counts the distance traveled by walking (also works with Basic Movement)
#MoveEndings: The number of movements a target can end before being removed (-1 = unlimited)
#Var1: Temporary variable, changes all the time because it's used everywhere
#Timer10ticks: Runs a 0.5 sec timer on this entity

# Tags:
#BasicMoving: When an entity has this tag, it will start moving
#BMZombie: Identifier of the Zombie used to create the movement
#BMVillager: Identifier of the Villager used to create the movement
#BMInitZombie: Used to initialise the zombie 
#BMInitVillager: Used to initialise the villager 
#Source: Temporary tag. Used to identify the executor of a function.
#DontStopBM: All AIs using this system with this tag will not stop their movement when they reach the target.
#StopBM: All AIs with this tag will stop their movement if they have this tag
#Invisible: All entities with this tag become invisible (2 seconds update)
#NoFire: Prevents entities with this tag from taking fire (2 seconds update)
#CanBeAlive: All entities with this tag are ignored by the auto kill system (but will be killed after the next reset)
#FPZombie: The zombies that use this system to follow a player have this tag