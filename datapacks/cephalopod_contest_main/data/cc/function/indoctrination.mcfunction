advancement revoke @s only cc:indoctrination
tp @a[tag=hooked] @s
title @a[tag=hooked] subtitle {"text":"You have been indoctrinated!","color":"red"}
title @a[tag=hooked] title ""
tellraw @a [{"selector":"@s"}," has activated Child Indoctrination!"]
tag @a[tag=!out] remove hooked
clear @s fishing_rod
schedule function cc:return_ability 5s