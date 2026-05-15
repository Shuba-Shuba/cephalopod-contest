$tellraw @a {text:"-$2 for $(name) (OFFLINE)",color:"red"}
$scoreboard players remove $(name) board_money 2
$execute if score $(name) board_money matches 0..1 run tellraw @a ["[POVERTY ALERT] Offline player $(name) is ASS! zawg is in BIG DEBT now, and they don't even know it! laugh at this absent fool."]
$function cc:board/update_display_by_name {name:"$(name)"}