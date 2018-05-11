
#Particles
particle explosion_emitter ~ ~ ~ 3.5 3.5 3.5 0.1 25 force
particle smoke ~ ~ ~ 4 4 4 0.2 300 force
particle block coal_block ~ ~ ~ 4 0 4 0.1 120 force

#Stops the particles after 5 ticks
tag @s[scores={Timer1s=5..}] remove HugeExpl