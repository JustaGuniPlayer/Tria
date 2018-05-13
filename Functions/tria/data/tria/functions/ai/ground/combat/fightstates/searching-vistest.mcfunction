# AI Ground Combat: FightState/Searching-VisTest

scoreboard players add @e[scores={FightState=1},tag=AskedVisTest] VisTestCount 1

# When the AI has launched 8 tests, we wait until we are sure there is no tests still in air
tag @e[scores={VisTestCount=8,FightState=1},tag=AskedVisTest] add BlockVisTests

# Switches to the Waiting Fight State
scoreboard players set @e[scores={VisTestCount=9..,FightState=1},tag=AskedVisTest] NewFightState 2
