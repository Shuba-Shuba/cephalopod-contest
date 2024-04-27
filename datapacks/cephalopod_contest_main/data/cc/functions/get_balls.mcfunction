advancement revoke @s only cc:get_balls
#say get balls
kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
clear @s snowball[custom_data={dodge:1b}] 1
give @s minecraft:snowball[custom_data={dodge:1b}] 1