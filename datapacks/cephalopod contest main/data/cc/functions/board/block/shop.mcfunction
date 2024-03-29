# @s = player
# wait for player's choice
function cc:board/await_start {time:10}
scoreboard players enable @s board_shop
tellraw @a ["",{"selector":"@s"}," be shopping"]

# shop UI
tellraw @s "buy something fucker"
execute if block ~ ~-3 ~ dirt run function cc:board/block/shop_shady
execute if block ~ ~-3 ~ oak_planks run function cc:board/block/shop_market
execute if block ~ ~-3 ~ stone run function cc:board/block/shop_wallsmart
execute if score #in_stock board_stars matches 1 if score @s board_money matches 10.. run tellraw @s ["",{"text":"\n[Buy Star]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_shop set 1"},"color":"yellow"}," - $10"]
execute if score #in_stock board_stars matches 1 unless score @s board_money matches 10.. run tellraw @s [{"text":"\n[Buy Star]","color":"red","hoverEvent":{"action":"show_text","value":"lmao broke ass you can't afford the star"}}," - $10"]
execute unless score #in_stock board_stars matches 1 run tellraw @s ["",{"text":"\n[No Stars For Sale]","hoverEvent":{"action":"show_text","value":"try another shop!"},"color":"red"}]
tellraw @s {"text":"\n[Leave Shop]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_shop set -1"}}