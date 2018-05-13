# AI Ground Combat: Main
# Made by: KubbyDev

# This tag stays during one tick after a visibility test
tag @e remove AskedVisTest

# Searches for enemy bullets nearby.
execute if entity @e[tag=SearchBullet] run function tria:ai/ground/combat/tools/searchbullet
# Starts the visibility tests on the best moment to reduce the number of fake bullets flying at the same time
execute if entity @e[scores={TestFrequency=1..}] run function tria:ai/ground/combat/tools/testfrequency
# Starts a visibility test (fake bullet)
execute if entity @e[tag=StartVisTest,tag=!BlockVisTests] run function tria:ai/ground/combat/vistest/start
tag @e[tag=StartVisTest] add AskedVisTest
tag @e remove StartVisTest
# Moves the fake bullets and tests for blocks or enemies
execute if entity @e[tag=VisTest] run function tria:ai/ground/combat/vistest/main

# Searches for a safe zone to reload
execute if entity @e[tag=SafeZoneReload] run function tria:ai/ground/combat/tools/safezonereload
execute if entity @e[tag=ExitSafeZone] run function tria:ai/ground/combat/tools/exitsafezone

# Melee kills
execute as @e[tag=AIFighting,scores={Team=-1}] at @s store result score @s Var1 run data get entity @e[tag=AIHitbox,distance=..2,limit=1,sort=nearest] Health 10
scoreboard players set @e[tag=AIFighting,scores={Var1=..999,Team=-1}] Health 0

# Runs the actions of a given fight state if it finds entities on it
execute if entity @e[scores={FightState=1}] run function tria:ai/ground/combat/fightstates/searching
execute if entity @e[scores={FightState=2}] run function tria:ai/ground/combat/fightstates/waiting
execute if entity @e[scores={FightState=3}] run function tria:ai/ground/combat/fightstates/shooting
execute if entity @e[scores={FightState=4}] run function tria:ai/ground/combat/fightstates/moving
execute if entity @e[scores={FightState=5}] run function tria:ai/ground/combat/fightstates/movingtorev
execute if entity @e[scores={FightState=6}] run function tria:ai/ground/combat/fightstates/reviving
# execute if entity @e[scores={FightState=7}] run function tria:ai/ground/combat/fightstates/dead

# Changes an entity's fight state if requested
execute if entity @e[scores={NewFightState=1..}] run function tria:ai/ground/combat/fightstates/change

# Small Random Movements
execute if entity @e[scores={SRmoves=1..}] run function tria:ai/ground/combat/tools/srmoves

# AIs or players to revive
execute if entity @e[tag=Dead] run function tria:ai/ground/combat/death/dead

# Makes the entities with FightWithPlayer tag stay close to the nearest player
execute as @e[tag=FightWithPlayer,scores={FightState=1..2}] at @s unless entity @a[scores={ID=1..4},distance=..9] run function tria:ai/ground/combat/tools/gotoplayer
execute as @e[tag=FightWithPlayer,scores={FightState=3,1stCdShoot=40..}] at @s unless entity @a[scores={ID=1..4},distance=..9] run function tria:ai/ground/combat/tools/gotoplayer

# Unimportant AI death
execute as @e[tag=AIFighting,tag=!MainAI,scores={Health=..0}] at @s run function tria:ai/ground/combat/tools/kill

# ------------------------------------------------
# How to use it:

# The Main AIs (the ones that replace a player) must have the MainAI tag

# execute as (Your AI) run function tria:ai/ground/combat/tools/init

# By default your AI has an assault rifle, you can change it:
# execute as (Your AI) run function tria:ai/ground/combat/tools/giveweapon/assaultrifle

# If you want a AI to stay close to the player during the fight, add the FightWithPlayer tag

# If you want a fighting AI to move you have to set its NewFightState to 4. 
# The AI will go back to combat if it recieves a bullet or if it stays static for 2 seconds

# ------------------------------------------------
# Fight States:

# SB = SearchBullets
# TF = TestFrequency

# Searching: SB, TF = 5, after 8 unsuccessful tests: goes to 2
# Waiting: SB, TF = 20
# Shooting: SB, TF = -1, shoots
# Moving: SB, TF = 5, moves
# Moving to Revive: SB, TF = -1, moves towards a wounded ally
# Reviving: SB, TF = -1,
# Dead: !SB, TF = -1, searches for allies nearby (to be revived)

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores: 
#TestFrequency: The TestFrequency score is the number of ticks between two visibility tests
#FightState: Stores the current fight state (from 1 to 7)
#NewFightState: Stores the wanted fight state (from 1 to 7)
#ID: Identifier of an entity (each AI has its own ID, but its bullets have the same ID as the AI that shot it).
#TargetID: ID of the target of an AI.
#Team: Equals 1 on all the ally entities and -1 on all the enemy ones (ally = on the team of the players).
#TFclock: The number of ticks before the next visibility test
#VisTestCount: Counts the number of visibility tests done (used in the searching fight state)
#Var1: Temporary variable, changes all the time because it's used everywhere
#1stCdShoot: The cooldown for the next shot for an AI (also used for the reload time) for the main weapon
#1stFirerate: The time between 2 shots for the main weapon
#1stReloadTime: The time needed to reload the main weapon
#1stAmoLoaded: The number of bullets loaded in the main weapons
#1stLoadCapacity: The capacity of the main weapons loader
#WeaponDamage: The damage dealth by the bullets of the current weapon.
#Unaccuracy: The accuracy of the current weapon. On bullets it's the magnitude of the random orientation vector to apply
#Damage: On everything without tag NoDamage, damage to be applied. On bullets, damage dealt by hit
#ReviveTime: The time needed to revive an AI
#CanBeAlive: Security score. All the entities with 0 are killed. When their score is negative it goes up (-20 allows an entity to live one second).
#Walking (minecraft.custom:minecraft.walk_one_cm): 0 when static, 1+ when walking
#MoveEndings: The number of movements a target can end before being removed (-1 = unlimited)
#SRmoves: Small Random Moves. If this score is positive the armor stand makes small random moves

# Tags:
#Data: Only the Data armor stand has this tag. NO OTHER ENTITY SHOULD GET THIS TAG.
#AIFighting: All the AI using this system have this tag
#CanBeShot: All the entities that can be targeted and shot at by this system have this tag
#MainAI: Only the AI that play the playable caracters have this tag (Identifier)
#SearchBullet: When an entity has this tag, it will searches for enemy bullets nearby. If it finds one, it sets the TargetID score equal to the ID of the bullet which is equal to the ID of the shooter
#StartVisTest: When an entity has this tag, it will start a visibility test
#VisTest: Only the fake bullets (used by the visibility test system as raycasting entities) have this tag (Identifier).
#KillVisTest: If a fake bullet has it, it will be killed.
#FoundVisTest: If a fake bullet has this tag, it found a target.
#BlockVisTests: Prevents visibility tests from being done
#Bullet: Only bullets have this tag (Identifier)
#Source: Temporary tag. Used to identify the executor of a function.
#StopBM: Stops the movement (Concerned system: ai/movement/basic)
#DontStopBM: All AIs using the basic movement system with this tag will not stop their movement when they reach the target.
#FollowPlayer: The AIs with this tag will follow the nearest player (Concerned system: ai/movement/followplayer)
#InitVisTest: Instantly removed, used to initialise a fake bullet
#Timer2s: Runs a 2 sec timer on this entity
#BasicMoving: All entities using the basic movement system have this tag (using zombies/villager)
#LinearMoving: All entities using the linear movement system have this tag (moving forward)
#CanBeAlive: All entities with this tag are ignored by the auto kill system (but will be killed after the next reset)
#FightWithPlayer: Makes the entity stay close to the nearest player
#InitAI: Used in combat/tools/spawnfightingai to initialise the spawned AI
#AskedVisTest: This tag stays during one tick after a visibility test
#ReviveTarget: Identifier for Target villagers (for the basic movement system) who are there for dead AIs
#Shoot: When an entity has this tag it will shoot a bullet
#SafeZoneReload: This tag is added when an AI reloads, it tells it to search for a safe zone to reload
#SafeZoneReload: This tag is added when an AI finishes its reload or changes fightstate, it tells it to leave its safe zone
#SafeZoneLeft: When an AI searches for a safe zone and finds it on its left, it gets this tag
#SafeZoneRight: When an AI searches for a safe zone and finds it on its right, it gets this tag
#InSafeZone: When an AI searches for a safe zone and finds it, it gets this tag



