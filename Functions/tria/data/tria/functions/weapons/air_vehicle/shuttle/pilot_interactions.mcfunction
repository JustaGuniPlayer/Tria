# @e[tag=Source] is one of the shuttles, @s is its pilot

# Transfers the cooldown for the missiles
scoreboard players operation @s CD_Shoot = @e[tag=Source,limit=1] CD_Shoot

# Transfers the shoot orders
execute if entity @s[scores={UseCarrot=1..},nbt={SelectedItemSlot:0}] as @e[tag=Source,limit=1] run function tria:weapons/air_vehicle/shuttle/shoot_bullet
execute if entity @s[scores={UseCarrot=1..},nbt={SelectedItemSlot:1}] as @e[tag=Source,scores={CD_Shoot=0},limit=1] run function tria:weapons/air_vehicle/shuttle/shoot_missile
