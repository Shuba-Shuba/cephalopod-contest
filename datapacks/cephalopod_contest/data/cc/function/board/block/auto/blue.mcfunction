$tellraw @a {text:"+$3 for $(name) (OFFLINE)",color:"green"}
$scoreboard players add $(name) board_money 3
$function cc:board/update_display_by_name {name:"$(name)"}