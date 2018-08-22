# Hotbar ground combat (HotbarState=2)

execute if entity @e[tag=Data,tag=FRA] run function tria:hotbar/hotbars/groundcombat/items/fr
execute if entity @e[tag=Data,tag=ENG] run function tria:hotbar/hotbars/groundcombat/items/en

execute if entity @e[tag=Data,tag=FRA] run function tria:hotbar/hotbars/groundcombat/display/fr
execute if entity @e[tag=Data,tag=ENG] run function tria:hotbar/hotbars/groundcombat/display/en