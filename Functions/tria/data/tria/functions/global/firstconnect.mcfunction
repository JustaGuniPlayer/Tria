#This Function is executed when someone joins the game for the first time
#Called by tria:main10ticks
execute if entity @e[type=armor_stand,name=Data,tag=FRA] run tellraw @a[tag=!Spawn] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Bienvenue sur ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
execute if entity @e[type=armor_stand,name=Data,tag=ENG] run tellraw @a[tag=!Spawn] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Welcome on ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
spawnpoint @a[tag=!Spawn] 1000 100 1000
execute if entity @a[tag=!Spawn] run summon fireworks_rocket 1000 105 1000 {Tags:["CanBeAlive"],LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200],FadeColors:[I;16777215]}]}}}}
scoreboard players set @a[tag=!Spawn] Join 1
tag @a add Spawn