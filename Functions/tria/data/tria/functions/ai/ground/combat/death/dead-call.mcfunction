# AI Ground Combat: Dead-Call (Calls AIs to be revived)
# Called by ai/ground/combat/death/dead

# Searches for an MainAI in the Waiting FightState
scoreboard players set @e[scores={FightState=2},tag=MainAI,limit=1,sort=random] NewFightState 5

# If nothing is found, searches for an MainAI in the Searching FightState
execute unless entity @e[scores={NewFightState=5},tag=MainAI] run scoreboard players set @e[scores={FightState=1},tag=MainAI,limit=1,sort=random] NewFightState 5

# If nothing is found, searches for an MainAI in the Moving FightState
execute unless entity @e[scores={NewFightState=5},tag=MainAI] run scoreboard players set @e[scores={FightState=4},tag=MainAI,limit=1,sort=random] NewFightState 5

# If nothing is found, searches for an MainAI in the Shooting FightState, but reloading
execute unless entity @e[scores={NewFightState=5},tag=MainAI] run scoreboard players set @e[scores={FightState=3,1stCdShoot=40..},tag=MainAI,limit=1,sort=random] NewFightState 5