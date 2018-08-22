#Name: As Tank
#Path: tria:weapons/ground_vehicle/as_tank

#System: Vehicle / Ground / Tank
#Author: A~Z, KubbyDev

#Version: 1.0
#Minecraft: 1.13

#Requirement:
# - UseCarrot (score minecraft.used:minecraft.carrot_on_a_stick)
# - HotbarState (score dummy)
# - CD_Shoot (score dummy)

#Input:
# - tank (tag)

#Output:
# - tank_active_shield (tag)
# - tank_cooldown_shot (tag)

#Code:

# The pilot's ID is the tank's TargetID

	#Vehicle enter and leave
execute as @a[tag=!tank_rider,nbt={RootVehicle:{Entity:{id:"minecraft:horse",Tags:["tank"]}}}] run function tria:weapons/ground_vehicle/tank/enter
execute as @a[tag=tank_rider,nbt=!{RootVehicle:{Entity:{id:"minecraft:horse",Tags:["tank"]}}}] run function tria:weapons/ground_vehicle/tank/leave

	#Interactions with the pilot (The pilot gets the cooldowns, and the tank gets the inputs)
scoreboard players set @e[tag=tank] Var1 0
execute as @e[tag=tank,scores={TargetID=1..}] run function tria:weapons/ground_vehicle/tank/pilot_interactions
tag @e[tag=tank,scores={Var1=1}] remove tank_shield_active
tag @e[tag=tank,scores={Var1=2}] add tank_shield_active
	
	#Checking shot cool-down
scoreboard players remove @e[tag=tank, scores={CD_Shoot=1..}] CD_Shoot 1

	#Shield charge
scoreboard players remove @e[tag=tank, scores={ShieldCharge=1..}, tag=tank_shield_active] ShieldCharge 1
scoreboard players add @e[tag=tank, scores={ShieldCharge=..499}, tag=!tank_shield_active] ShieldCharge 2
scoreboard players set @e[tag=tank, scores={ShieldCharge=..-1}] ShieldCharge 0 
scoreboard players set @e[tag=tank, scores={ShieldCharge=501..}] ShieldCharge 500
tag @e[tag=tank, scores={ShieldCharge=0}] remove tank_shield_active













