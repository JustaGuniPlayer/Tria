# AI Orders main function
# Made by: KubbyDev

# Change Order
scoreboard players add @a[scores={ID=1..4,InVehicle=0,Drop=1},nbt={SelectedItemSlot:6}] Order 1
scoreboard players set @a[scores={ID=1..4,InVehicle=0,Order=2..}] Order 0

# Use Order (in order: Stop, Follow me, Go here)
execute if entity @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,Order=0},nbt={SelectedItemSlot:6}] run function tria:ai/ground/combat/orders/stop
execute if entity @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,Order=1},nbt={SelectedItemSlot:6}] run tag @e[tag=MainAI] add FightWithPlayer
execute as @a[scores={ID=1..4,InVehicle=0,UseCarrot=1,Order=2},nbt={SelectedItemSlot:6}] run function tria:ai/ground/combat/orders/go_here