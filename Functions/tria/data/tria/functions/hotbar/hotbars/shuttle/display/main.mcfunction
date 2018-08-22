# This file isn't separated in two because it's the same in all languages

# Calculation of the shoot cooldown in seconds
execute as @a[scores={HotbarState=200},nbt={SelectedItemSlot:1}] run scoreboard players operation @s Var1 = @s CD_Shoot
scoreboard players add @a[scores={HotbarState=200},nbt={SelectedItemSlot:1}] Var1 19
execute as @a[scores={HotbarState=200},nbt={SelectedItemSlot:1}] run scoreboard players operation @s Var1 /= 20 Constant

# Display
execute as @a[scores={HotbarState=200},nbt={SelectedItemSlot:1}] run title @s actionbar {"text":"< ","color":"white","bold":"true","extra":[{"score":{"name":"@s","objective":"Var1"},"color":"gold"},{"text":"s","bold":"false"},{"text":" >"}]}