#This Function is executed when someone joins the game
#Called by tria:main10ticks
scoreboard players add @a ID 0
tp @a[scores={ID=0,Join=1..}] 1000 100 1000
gamemode adventure @a[scores={ID=0,Join=1..}]
title @a[scores={Join=1..}] times 0 3 10
scoreboard players set @a Join 0

#Join is a stat.leaveGame
#Id is the identifier of the player (0 if the player is in the lobby)