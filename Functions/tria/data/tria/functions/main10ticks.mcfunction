#Main function
#Called every 10 tick (by Tria:Main)

#Source entity is the armor_stand with tag Data

# ---- Global Systems -------------------------------------------------------------------------------------

#Join Game System
#First Connection
execute if entity @a[tag=!Spawn] run function tria:generic/global/firstconnect
#Other Connections
execute if entity @a[scores={Join=1}] run function tria:generic/global/connection