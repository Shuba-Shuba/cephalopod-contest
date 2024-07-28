# -2
tellraw @s {"text":"-$2","color":"red"}
execute if score @s board_money matches 0..1 run tellraw @a ["[POVERTY ALERT] ",{"selector":"@s"}," is ASS! zawg is in BIG DEBT now! laugh at this fool."]
scoreboard players remove @s board_money 2
function cc:board/update_display