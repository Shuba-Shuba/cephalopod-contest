place template minecraft:blocks_player ~ ~ ~
tag @s remove tmp_unteleported
tellraw @a ["[DEBUG] created building area for ",{"selector":"@s"}]
execute if entity @e[type=marker,limit=1,tag=tmp_blocks_tp] run say TP EXISTS
tp @s @e[type=marker,limit=1,tag=tmp_blocks_tp]
kill @e[type=marker,tag=tmp_blocks_tp]
execute unless entity @a[tag=tmp_unteleported] positioned ~17 ~ ~ run function lobster:blocks_spawn_end
execute if entity @a[tag=tmp_unteleported] as @r[tag=tmp_unteleported] positioned ~17 ~ ~ run function lobster:blocks_spawn