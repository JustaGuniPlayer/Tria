# AI Ground Combat: Change Test Frequency
# This function updates the TFclock to try to reduce the number of visibility tests in the air at the same time

#Picks a number between 1 and 40 to initialise the timer. This number grow by 3 everytime an entity launches this function
scoreboard players add TestFrequency TestFrequency 3
execute if score TestFrequency TestFrequency matches 40.. run scoreboard players remove TestFrequency TestFrequency 40
scoreboard players operation @s TFclock = TestFrequency TestFrequency

#Puts this number in range 0..TestFrequency
scoreboard players operation @s TFclock %= @s TestFrequency
