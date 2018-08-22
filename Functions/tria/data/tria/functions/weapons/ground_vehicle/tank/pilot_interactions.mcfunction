# Source is the tank, the pilot is accessible by the TargetID of its vehicle

tag @s add Source

	#Copying ShieldCharge and CD_Shoot to display them
execute as @a[tag=tank_rider] if score @s ID = @e[tag=Source,limit=1] TargetID run scoreboard players operation @s ShieldCharge = @e[tag=Source,limit=1] ShieldCharge
execute as @a[tag=tank_rider] if score @s ID = @e[tag=Source,limit=1] TargetID run scoreboard players operation @s CD_Shoot = @e[tag=Source,limit=1] CD_Shoot

	#Checking missile shot & shield activation
execute if entity @s[scores={CD_Shoot=0}] as @e[tag=tank_rider, scores={UseCarrot=1..}, nbt={SelectedItemSlot:4}] if score @s ID = @e[tag=Source,limit=1] TargetID as @e[tag=Source,limit=1] at @s run function tria:weapons/ground_vehicle/tank/shot
execute if entity @s[tag=tank_shield_active] as @e[tag=tank_rider, scores={Drop=1..}, nbt={SelectedItemSlot:4}] if score @s ID = @e[tag=Source,limit=1] TargetID run scoreboard players set @e[tag=Source,limit=1] Var1 1
execute if entity @s[tag=!tank_shield_active,scores={ShieldCharge=50..}] as @e[tag=tank_rider, scores={Drop=1..}, nbt={SelectedItemSlot:4}] if score @s ID = @e[tag=Source,limit=1] TargetID run scoreboard players set @e[tag=Source,limit=1] Var1 2

tag @s remove Source