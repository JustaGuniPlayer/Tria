# AI Orders main function
# Made by: KubbyDev

# Change Order
scoreboard players add @a[scores={ID=1..4,InVehicle=0,Drop=1,ActiveSlot=6}] Order 1
scoreboard players set @a[scores={ID=1..4,InVehicle=0,Order=2..}] Order 0

# Use Order (in order: Stop, Follow me, Go here)
execute if entity @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,ActiveSlot=6,Order=0}] run function tria:ai/ground/combat/orders/stop
execute if entity @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,ActiveSlot=6,Order=1}] run tag @e[tag=MainAI] add FightWithPlayer
execute as @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,ActiveSlot=6,Order=2}] run function tria:ai/ground/combat/orders/go_here

# Display
execute if entity @e[tag=Data,tag=FRA] if entity @a[scores={ID=1..4,InVehicle=0,ActiveSlot=6}] run function tria:ai/ground/combat/orders/disp_fr
execute if entity @e[tag=Data,tag=ENG] if entity @a[scores={ID=1..4,InVehicle=0,ActiveSlot=6}] run function tria:ai/ground/combat/orders/disp_en
