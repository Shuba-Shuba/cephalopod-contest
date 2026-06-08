# lose half
$scoreboard players operation #tmp calc = $(name) board_money
scoreboard players operation #tmp calc /= 2 calc
$scoreboard players operation $(name) board_money -= #tmp calc
$function cc:board/update_display_by_name {name:"$(name)"}

# placer gets half
scoreboard players operation .search board_turn = @n[type=marker,tag=board_tnt_trap,distance=..1] board_turn
execute as @a[tag=!out] if score @s board_turn = .search board_turn run scoreboard players operation @s board_money += #tmp calc
execute as @a[tag=!out] if score @s board_turn = .search board_turn run function cc:board/update_display
$execute as @a[tag=!out] if score @s board_turn = .search board_turn run tellraw @a ["",{selector:"@s"}," stole $",{score:{name:"#tmp",objective:"calc"}}," from $(name) (OFFLINE)"]
kill @n[type=marker,tag=board_tnt_trap,distance=..1]