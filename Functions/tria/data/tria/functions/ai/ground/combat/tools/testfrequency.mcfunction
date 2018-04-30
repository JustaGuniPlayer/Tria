# AI Ground Combat: Test Frequency
# This function launches the visibility tests

scoreboard players remove @e[scores={TestFrequency=1..}] TFclock 1

# Starts a visibility test if the timer reaches 0
tag @e[scores={TestFrequency=1..,TFclock=..0}] add StartVisTest

# Restarts the timer when it reaches 0
execute as @e[scores={TestFrequency=1..,TFclock=..0}] run scoreboard players operation @s TFclock = @s TestFrequency


# TestFrequency is the number of ticks between 2 visibility tests
# A negative TestFrequency deactivates the tests

