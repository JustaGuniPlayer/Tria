# Nuxuses (sort of black wolves)

# Gets the health (the smallest value between the real health and the current score (that can change is it recieves a bullet))
execute as @e[tag=Noxus] store result score @s Var1 run data get entity @s Health 10
scoreboard players operation @s Health < @s Var1

# Detects changes in the health (damage taken). HeadDamage score is used to avoid creating millions of useless objectives
scoreboard players operation @s Var1 = @s HeadDamage
scoreboard players operation @s Var1 -= @s Health
scoreboard players operation @s HeadDamage = @s Health
# Var1 is the damages taken, HeadDamage is the health in the previous tick




# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores: 


# Tags:
#Noxus: Identifier of noxuses
#NoxusTarget: Identifier of the sheeps used to attract noxuses
#Invisible: All entities with this tag become invisible (2 seconds update)