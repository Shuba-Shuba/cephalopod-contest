scoreboard players set @s backstab_break 0

# miss
title @s[scores={backstab_valid=0}] actionbar {"text":"MISSED BACKSTAB - No stars stolen","color":"red"}
execute if score @s backstab_valid matches 0 run tellraw @a ["",{"selector":"@s"}," failed a backstab!"]

# hit
tag @s add this
execute as @a[tag=can_be_backstabbed] at @s on attacker if entity @s[tag=this] run tag @p add backstabbed
tag @s remove this
title @s[scores={backstab_valid=1}] actionbar [{"text":"HIT - Star stolen from ","color":"green"},{"selector":"@a[tag=backstabbed]"}]
execute if score @s backstab_valid matches 1 run tellraw @a ["",{"selector":"@s"}," successfully backstabbed ",{"selector":"@a[tag=backstabbed]"},"!"]
scoreboard players remove @a[tag=backstabbed] board_stars 1
scoreboard players add @s[scores={backstab_valid=1}] board_stars 1
function cc:board/update_display

# debug b/c i don't trust this to work 100%
# update: advancement doesn't go off, but backstab_valid and can_be_backstabbed tags (by extension backstabbed tag as seen above) work
say tag can_be_backstabbed: @a[tag=can_be_backstabbed]
say tag backstabbed: @a[tag=backstab]
say tag backstab_valid: @a[tag=backstab_valid]
say advancement backstabbed: @a[advancements={cc:backstabbed=true}]

tag @a remove can_be_backstabbed
tag @a remove backstabbed
advancement revoke @a only cc:backstabbed