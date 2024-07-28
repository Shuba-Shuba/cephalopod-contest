# check recipe id and give corresponding items
execute if score .id craft matches 1 run give @s minecraft:structure_block[custom_name='{"text":"Shotgun Shell","italic":false}',custom_data={ammo:{type:3b}}] 8

# loop function to support mass crafting
scoreboard players remove .c craft 1
execute if score .c craft matches 1.. run function shb:craft/give