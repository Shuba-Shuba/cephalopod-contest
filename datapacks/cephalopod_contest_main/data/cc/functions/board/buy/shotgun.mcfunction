scoreboard players remove @s board_money 10
tellraw @s "here's your shotgun. now get the fuck out\nnote - in case you didn't read the item description, this is only for parking lot fights"
give @s minecraft:carrot_on_a_stick[custom_model_data=206,attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:-1000000,slot:"mainhand",name:"<name>",uuid:[I;923083048,1939549020,-393494939,-239439094]}],show_in_tooltip:0b},custom_name='{"text":"Shotgun","italic":false}']