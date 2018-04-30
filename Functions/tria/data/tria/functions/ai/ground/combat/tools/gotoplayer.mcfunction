# AI Ground Combat: Go To Player

# When an entity with FightWithPlayer tag is too far from the nearest player, it gets closer

function tria:ai/ground/movement/followplayer/start
scoreboard players set @s NewFightState 4