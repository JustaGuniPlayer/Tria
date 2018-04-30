# AI Ground Combat: VisibilityTest/Main

# Moves 4 blocks forward (this function also tests for blocks or enemies)
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move
function tria:ai/ground/combat/vistest/move

# Asks to kill the fake bullet if it has traveled 80 blocks (20 times 4 blocks)
tag @e[tag=VisTest,scores={CanBeAlive=-1}] add KillVisTest

# Kills the bullet
execute as @e[tag=KillVisTest] run function tria:ai/ground/combat/vistest/kill

# Actions when a target is found
execute as @e[tag=FoundVisTest] run function tria:ai/ground/combat/vistest/foundtarget
