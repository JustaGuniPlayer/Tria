# Guided Missile Main
# by: KubbyDev

# Finds the orientation to the nearest target
# execute as @e[tag=GuidedMissile] at @s run tp @s ~ ~ ~ facing entity @e[tag=CanBeShot,scores={Team=-1},limit=1,sort=nearest]
execute as @e[tag=GuidedMissile] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=GuidedMissile] store result score @s Var1 run data get entity @s Rotation[0] 1000
execute as @e[tag=GuidedMissile] store result score @s Var2 run data get entity @s Rotation[1] 1000

# Calculation of the modifications to apply to the orientation
#Theta and Phi are the orientation on the previous tick
execute as @e[tag=GuidedMissile] run scoreboard players operation @s Var1 -= @s Theta
execute as @e[tag=GuidedMissile] run scoreboard players operation @s Var2 -= @s Phi
#Prevents the missile from traveling all the circle when it can go through 0 (example: to go from 4 degrees to 352)
scoreboard players set @e[tag=GuidedMissile,scores={Var1=180000..}] Var1 -5000
scoreboard players set @e[tag=GuidedMissile,scores={Var1=..-180000}] Var1 5000
#Limitates the angular speed
scoreboard players set @e[tag=GuidedMissile,scores={Var1=5001..}] Var1 5000
scoreboard players set @e[tag=GuidedMissile,scores={Var1=..-5001}] Var1 -5000
scoreboard players set @e[tag=GuidedMissile,scores={Var2=5001..}] Var2 5000
scoreboard players set @e[tag=GuidedMissile,scores={Var2=..-5001}] Var2 -5000

# Calculates the new orientation
execute as @e[tag=GuidedMissile] run scoreboard players operation @s Theta += @s Var1
execute as @e[tag=GuidedMissile] run scoreboard players operation @s Phi += @s Var2
scoreboard players add @s[tag=GuidedMissile,scores={Theta=..-1}] Theta 360000
scoreboard players remove @s[tag=GuidedMissile,scores={Theta=360001..}] Theta 360000
scoreboard players set @s[tag=GuidedMissile,scores={Phi=..-1}] Phi 0
scoreboard players set @s[tag=GuidedMissile,scores={Phi=180001..}] Phi 180000

# Applies the new orientation
execute as @e[tag=GuidedMissile] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s Theta
execute as @e[tag=GuidedMissile] store result entity @s Rotation[1] float 0.001 run scoreboard players get @s Phi