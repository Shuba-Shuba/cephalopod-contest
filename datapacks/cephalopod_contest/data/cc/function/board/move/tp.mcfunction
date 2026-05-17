execute as @n[type=item_display,tag=tmp_next_space_tp] at @s positioned as @n[type=marker,tag=tmp_next_space] run tp ~ ~32 ~
kill @e[type=marker,tag=tmp_next_space]
tag @e[type=item_display] remove tmp_next_space_tp