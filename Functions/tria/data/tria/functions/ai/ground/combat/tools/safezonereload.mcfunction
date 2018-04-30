# AI Ground Combat: Tools/SafeZoneReload

# Searches for a safe zone to reload

tag @e[tag=SafeZoneReload] remove SafeZoneLeft
tag @e[tag=SafeZoneReload] remove SafeZoneRight

# Verifies that if it walks one block to the right or to the left, it is proected from bullets
execute as @e[tag=SafeZoneReload] at @s positioned ^1 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough positioned ^ ^ ^1 unless block ~ ~ ~ #tria:transparent unless block ~ ~1 ~ #tria:transparent run tag @s add SafeZoneLeft
execute as @e[tag=SafeZoneReload] at @s positioned ^-1 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough positioned ^ ^ ^1 unless block ~ ~ ~ #tria:transparent unless block ~ ~1 ~ #tria:transparent run tag @s add SafeZoneRight

# Prevents the AI from staying in the middle if both sides are safe zones
tag @e[tag=SafeZoneRight] remove SafeZoneLeft

# Goes in the safe zone
execute as @e[tag=SafeZoneLeft,tag=SafeZoneReload] at @s run tp @s ^1 ^ ^
execute as @e[tag=SafeZoneRight,tag=SafeZoneReload] at @s run tp @s ^-1 ^ ^

tag @e[tag=SafeZoneRight] add InSafeZone
tag @e[tag=SafeZoneLeft] add InSafeZone

# Arms animation
execute as @e[tag=InSafeZone] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}

tag @e remove SafeZoneReload

# Old fancy not working commands:
# execute as @e[tag=SafeZoneReload] at @s positioned ^1 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough positioned ^ ^ ^1 unless block ~ ~ ~ #tria:transparent unless block ~ ~1 ~ #tria:transparent run tag @s add SafeZoneLeft
# execute as @e[tag=SafeZoneReload] at @s positioned ^-1 ^ ^ if block ~ ~ ~ #tria:cangothrough if block ~ ~1 ~ #tria:cangothrough unless block ~ ~-1 ~ #tria:cangothrough positioned ^ ^ ^1 unless block ~ ~ ~ #tria:transparent unless block ~ ~1 ~ #tria:transparent run tag @s add SafeZoneRight
