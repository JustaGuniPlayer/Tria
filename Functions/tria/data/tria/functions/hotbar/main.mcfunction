#System: Hotbar Manager
#Author: A~Z
#Contributors: (each time you add a hotbar)

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - HotbarState (score dummy)

#Input:
# - HotbarState (score dummy)

#Output: /

#Code:

# Ground
execute if entity @a[scores={HotbarState=1}] run function tria:hotbar/hotbars/groundcombat/main

# Ground Vehicles
execute if entity @a[scores={HotbarState=100}] run function tria:hotbar/hotbars/tank/main

# Air and Space Vehicles
execute if entity @a[scores={HotbarState=200}] run function tria:hotbar/hotbars/shuttle/main