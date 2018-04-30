# Ground Weapons / Display and Items EN

#Items
replaceitem entity @a[scores={InVehicle=0,ID=1..4}] slot.weapon.offhand air
replaceitem entity @a[scores={1stWeapon=1,ID=1..4,InVehicle=0}] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Assault Rifle"}}
replaceitem entity @a[scores={1stWeapon=2,ID=1..4,InVehicle=0}] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Sniper"}}
replaceitem entity @a[score_1stWeapon_min=3,score_1stWeapon=3,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Shotgun"}}
replaceitem entity @a[score_2ndWeapon_min=1,score_2ndWeapon=1,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"Desert Eagle"}}
replaceitem entity @a[score_2ndWeapon_min=2,score_2ndWeapon=2,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"9 mm"}}
replaceitem entity @a[score_1stWeapon=0,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.0 stained_glass_pane 1 15 {display:{Name:""}}
replaceitem entity @a[score_2ndWeapon=0,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 stained_glass_pane 1 15 {display:{Name:""}}

#Affichage
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st=0,score_Id_min=1,score_Id=5] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"1stMaxAmo","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"1stAmo","name":"@p"},"bold":"true"}]}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5] ~ ~ ~ title @s[tag=!Lock1st] actionbar {"text":"Reloading...","bold":"true"}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5] ~ ~ ~ title @s[tag=Lock1st] actionbar {"text":"You can't use this while on the ground !","bold":"true"}
execute @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_2ndWeapon_min=1,score_Reloading2nd=0,score_Id_min=1,score_Id=5] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"2ndAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"2ndMaxAmo","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"2ndAmo","name":"@p"},"bold":"true"}]}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_2ndWeapon_min=1,score_Reloading2nd_min=1,score_Id_min=1,score_Id=5] actionbar {"text":"Reloading...","bold":"true"}
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_Id_min=1,score_Id=5,score_1stWeapon=0] actionbar {"text":""}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_Id_min=1,score_Id=5,score_2ndWeapon=0] actionbar {"text":""}




