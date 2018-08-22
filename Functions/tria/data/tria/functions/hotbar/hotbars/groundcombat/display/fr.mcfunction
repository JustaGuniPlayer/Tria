# Ground Weapons / Display FR

# Slots 0 and 1
execute as @a[scores={1stWeapon=1..,1stReloading=0,HotbarState=1},nbt={SelectedItemSlot:0},tag=!LockWeapons] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@s"},"bold":"true"},{"text":"/"},{"score":{"objective":"1stLoadCapacity","name":"@s"},"bold":"true"},{"text":" > : "},{"score":{"objective":"1stAmo","name":"@s"},"bold":"true"}]}
title @a[scores={1stWeapon=1..,1stReloading=1..,HotbarState=1},nbt={SelectedItemSlot:0},tag=!LockWeapons] actionbar {"text":"Rechargement...","bold":"true"}
title @a[scores={1stWeapon=1..,HotbarState=1},nbt={SelectedItemSlot:0},tag=LockWeapons] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
execute as @a[scores={2ndWeapon=1..,2ndReloading=0,HotbarState=1},nbt={SelectedItemSlot:1},tag=!LockWeapons] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"2ndAmoLoaded","name":"@s"},"bold":"true"},{"text":"/"},{"score":{"objective":"2ndLoadCapacity","name":"@s"},"bold":"true"},{"text":" > : "},{"score":{"objective":"2ndAmo","name":"@s"},"bold":"true"}]}
title @a[scores={2ndWeapon=1..,2ndReloading=1..,HotbarState=1},nbt={SelectedItemSlot:1},tag=!LockWeapons] actionbar {"text":"Rechargement...","bold":"true"}
title @a[scores={2ndWeapon=1..,HotbarState=1},nbt={SelectedItemSlot:1},tag=LockWeapons] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
title @a[scores={1stWeapon=0,HotbarState=1},nbt={SelectedItemSlot:0}] actionbar {"text":""}
title @a[scores={2ndWeapon=0,HotbarState=1},nbt={SelectedItemSlot:1}] actionbar {"text":""}

# Slot 6
title @a[scores={HotbarState=1,Order=0},nbt={SelectedItemSlot:6}] actionbar {"text":"Stop","bold":"true"}
title @a[scores={HotbarState=1,Order=1},nbt={SelectedItemSlot:6}] actionbar {"text":"Suivez moi","bold":"true"}
title @a[scores={HotbarState=1,Order=2},nbt={SelectedItemSlot:6}] actionbar {"text":"Allez la bas","bold":"true"}

# Slot 7
title @a[scores={HotbarState=1},nbt={SelectedItemSlot:7},tag=LockWeapons] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
execute as @a[scores={HotbarState=1},nbt={SelectedItemSlot:7},tag=!LockWeapons] run title @s actionbar {"text":"< ","extra":[{"text":"Grenades: "},{"score":{"objective":"Grenades","name":"@s"},"bold":"true"},{"text":" >"}]}
