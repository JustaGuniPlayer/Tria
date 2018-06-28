# AI Ground Combat: Activate Fight Mode

# Call this function (in one of the Chapter functions) to activate the AI fight.

function tria:ai/ground/combat/main
execute if entity @e[tag=BasicMoving] run function tria:ai/ground/movement/basic/main

execute if entity @e[tag=FollowPlayer] run function tria:ai/ground/movement/followplayer/main

# Manages the number of zombies (one per moving AI)
function tria:ai/ground/movement/basic/zombiesregulation