tellraw @s "Wall's Mart - 50% star market share\nbuy something fucker"
execute if score @s board_money matches 10.. run tellraw @s ["",{"text":"\n[Shotgun]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_shop set 300"},"hoverEvent":{"action":"show_text","value":"Gives you a shotgun during your next fight\nLasts 1 fight"}}," - $10"]
execute unless score @s board_money matches 10.. run tellraw @s [{"text":"\n[Shotgun]","color":"red","hoverEvent":{"action":"show_text","value":"Gives you a shotgun during your next fight\nLasts 1 fight\nYou can't afford this item"}}," - $10"]
execute if score @s board_money matches 20.. run tellraw @s ["",{"text":"\n[Backstabber]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_shop set 301"},"hoverEvent":{"action":"show_text","value":"Gives you a knife during your next fight, which lets you steal 1 star if you backstab the other player\nIf unused for the fight, you keep it, but it breaks upon use"}}," - $20"]
execute unless score @s board_money matches 20.. run tellraw @s [{"text":"\n[Backstabber]","color":"red","hoverEvent":{"action":"show_text","value":"Gives you a knife during your next fight, which lets you steal 1 star if you backstab the other player\nIf unused for the fight, you keep it, but it breaks upon use\nYou can't afford this item"}}," - $20"]

execute store result score #in_stock board_stars if score #pos board_stars matches 4..6