tellraw @s "Shady Shop - 17% star market share\nbuy something fucker"
execute if score @s board_money matches 3.. run tellraw @s ["",{text:"\n[Weed]",underlined:true,click_event:{action:"run_command",command:"/trigger board_shop set 100"},hover_event:{action:"show_text",value:"When used, doubles your next roll"}}," - $3"]
execute unless score @s board_money matches 3.. run tellraw @s [{text:"\n[Weed]",color:"red",hover_event:{action:"show_text",value:"When used, doubles your next roll\nYou can't afford this item"}}," - $3"]
execute if score @s board_money matches 5.. run tellraw @s ["",{text:"\n[Coke]",underlined:true,click_event:{action:"run_command",command:"/trigger board_shop set 101"},hover_event:{action:"show_text",value:"When used, triples your next roll"}}," - $5"]
execute unless score @s board_money matches 5.. run tellraw @s [{text:"\n[Coke]",color:"red",hover_event:{action:"show_text",value:"When used, triples your next roll\nYou can't afford this item"}}," - $5"]

execute store result score #in_stock board_stars if score #pos board_stars matches 1