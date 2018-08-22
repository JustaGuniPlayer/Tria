execute at @s run summon armor_stand ^ ^ ^1 {Tags:["GetVec"],Invisible:1,NoGravity:1}
execute store result score @s Var1 run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s Var2 run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s Var3 run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[2] 1000