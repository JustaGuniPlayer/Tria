# Natural Regeneration

# Time. Set to 100 when the player takes a damage
scoreboard players remove @a[scores={NatRegenTime=1..}] NatRegenTime 1

# Regenerates health
scoreboard players add @a[scores={NatRegenTime=0,Health=..199}] Health 1