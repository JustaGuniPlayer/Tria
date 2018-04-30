# AI Ground Combat: Tools/ExitSafeZone

# Leaves the safe zone
execute as @e[tag=ExitSafeZone,tag=SafeZoneLeft] at @s run tp @s ^-1 ^ ^
execute as @e[tag=ExitSafeZone,tag=SafeZoneRight] at @s run tp @s ^1 ^ ^

# Arms animation
execute as @e[tag=ExitSafeZone] run data merge entity @s {Pose:{RightArm:[-85f,-20f,-10f],LeftArm:[-75f,45f,0f]}}

tag @e[tag=ExitSafeZone] remove SafeZoneLeft
tag @e[tag=ExitSafeZone] remove SafeZoneRight

tag @e[tag=ExitSafeZone] remove InSafeZone
tag @e remove ExitSafeZone

# Old fancy not working commands:
# execute as @e[scores={1stCdShoot=20},tag=SafeZoneLeft,tag=InSafeZone] at @s positioned ^-0.71 ^ ^0.71 align xyz positioned ~0.5 ~0.05 ~0.5 run tp @s ~ ~ ~ ~135 ~
# execute as @e[scores={1stCdShoot=20},tag=SafeZoneRight,tag=InSafeZone] at @s positioned ^0.71 ^ ^0.71 align xyz positioned ~0.5 ~0.05 ~0.5 run tp @s ~ ~ ~ ~-135 ~
