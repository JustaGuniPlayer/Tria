#Camera Shake when something explodes near the player
#You can control the duration of the shake by setting the AnimExpl score to 3 instead of 6 for example
effect give @a[scores={AnimExpl=6}] blindness 1 1 true
execute at @a[scores={AnimExpl=6}] run tp @s ~ ~ ~ ~-2 ~1
execute at @a[scores={AnimExpl=5}] run tp @s ~ ~ ~ ~1 ~-2
execute at @a[scores={AnimExpl=4}] run tp @s ~ ~ ~ ~1 ~1
execute at @a[scores={AnimExpl=3}] run tp @s ~ ~ ~ ~1 ~-1
execute at @a[scores={AnimExpl=2}] run tp @s ~ ~ ~ ~-2 ~
execute at @a[scores={AnimExpl=1}] run tp @s ~ ~ ~ ~1 ~1
scoreboard players remove @a[scores={AnimExpl=1..}] AnimExpl 1

