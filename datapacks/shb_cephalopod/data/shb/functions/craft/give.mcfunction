# check recipe id and give corresponding items
execute if score .id craft matches 1 run give @s structure_block{ammo:{type:3b},display:{Name:'{"text":"Shotgun Shell","italic":false}'}} 8

# loop function to support mass crafting
scoreboard players remove .c craft 1
execute if score .c craft matches 1.. run function shb:craft/give