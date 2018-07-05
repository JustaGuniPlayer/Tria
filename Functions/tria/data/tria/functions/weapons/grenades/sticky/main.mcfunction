# Sticky Grenade
# Main

# Collision Detection (With a wall, because on the ground the AS is automaticly stopped)
execute as @e[tag=Grenade_Sticky] store result score @s Var1 run data get entity @s Motion[0] 1000000
execute as @e[tag=Grenade_Sticky] store result score @s Var2 run data get entity @s Motion[2] 1000000

# Collision
execute as @e[tag=Grenade_Sticky,tag=!Grenade_NoCollX,scores={Var1=0}] run function tria:weapons/grenades/sticky/stick
execute as @e[tag=Grenade_Sticky,tag=!Grenade_NoCollZ,scores={Var2=0}] run function tria:weapons/grenades/sticky/stick