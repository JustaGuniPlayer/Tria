# Natural Regeneration

# Time in seconds. Set to 5 when the player takes a damage
scoreboard players remove @a[scores={NatRegenTime=1..}] NatRegenTime 1

# Regenerates health
scoreboard players add @a[scores={NatRegenTime=0,Health=..199}] Health 5
scoreboard players set @a[scores={Health=201..}] Health 200