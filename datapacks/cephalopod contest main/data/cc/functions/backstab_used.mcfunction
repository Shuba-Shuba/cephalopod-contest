scoreboard players set @s backstab_break 0

# miss
title @s[scores={backstab_valid=0}] actionbar {"text":"MISSED - 8 second cooldown","color":"red"}
scoreboard players set @s[scores={backstab_valid=0}] backstab_cd 160

# hit
title @s[scores={backstab_valid=1}] actionbar {"text":"HIT - Invisibility + levitation for 3s","color":"green"}
scoreboard players set @s[scores={backstab_valid=1}] backstab_cd 60
scoreboard players set @s[scores={backstab_valid=1,jump_cd=1..}] jump_cd 1
effect give @s[scores={backstab_valid=1}] invisibility 3 0 false
effect give @s[scores={backstab_valid=1}] levitation 3 2 false