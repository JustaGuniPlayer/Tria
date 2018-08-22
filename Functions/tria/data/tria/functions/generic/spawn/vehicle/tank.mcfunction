


summon minecraft:horse ~ ~ ~ {Tags:["tank","CanBeAlive","InitTank","g_vehicle","TankWithShield","Ally","Timer5ticks"],Tame:1,SaddleItem:{id:"minecraft:saddle",Count:1b}}

scoreboard players set @e[tag=InitTank] EnginePower 138
scoreboard players set @e[tag=InitTank] Friction 1030
scoreboard players set @e[tag=InitTank] CD_Shoot 0
scoreboard players set @e[tag=InitTank] ShieldCharge 0

tag @e remove InitTank