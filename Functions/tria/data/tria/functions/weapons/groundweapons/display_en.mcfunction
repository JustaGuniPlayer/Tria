# Ground Weapons / Display and Items EN

# Slots 0 and 1
execute as @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=0,ID=1..4}] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@s"},"bold":"true"},{"text":"/"},{"score":{"objective":"1stLoadCapacity","name":"@s"},"bold":"true"},{"text":" > : "},{"score":{"objective":"1stAmo","name":"@s"},"bold":"true"}]}
title @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=1..,ID=1..4},tag=!LockWeapons] actionbar {"text":"Reloading...","bold":"true"}
title @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=1..,ID=1..4},tag=LockWeapons] actionbar {"text":"You can't use this weapon while on the ground !","bold":"true"}
execute as @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1..,2ndReloading=0,ID=1..4}] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"2ndAmoLoaded","name":"@s"},"bold":"true"},{"text":"/"},{"score":{"objective":"2ndLoadCapacity","name":"@s"},"bold":"true"},{"text":" > : "},{"score":{"objective":"2ndAmo","name":"@s"},"bold":"true"}]}
title @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1,2ndReloading=1..,ID=1..4},tag=!LockWeapons] actionbar {"text":"Reloading...","bold":"true"}
title @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1,2ndReloading=1..,ID=1..4},tag=LockWeapons] actionbar {"text":"You can't use this weapon while on the ground !","bold":"true"}
title @a[scores={ActiveSlot=0,InVehicle=0,ID=1..4,1stWeapon=0}] actionbar {"text":""}
title @a[scores={ActiveSlot=1,InVehicle=0,ID=1..4,2ndWeapon=0}] actionbar {"text":""}

# Slot 7
title @a[scores={ActiveSlot=7,InVehicle=0,ID=1..4},tag=LockWeapons] actionbar {"text":"You can't use this weapon while on the ground !","bold":"true"}
execute as @a[scores={ActiveSlot=7,InVehicle=0,ID=1..4},tag=!LockWeapons] run title @s actionbar {"text":"< ","extra":[{"text":"Grenades: "},{"score":{"objective":"Grenades","name":"@s"},"bold":"true"},{"text":" >"}]}