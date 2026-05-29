execute if entity @a[tag=debug] run say offhand cor

clear @s carrot_on_a_stick[item_model="air"]
tellraw @a[tag=debug] ["debug bef: ",{nbt:"equipment.offhand",entity:"@s",color:"red"}]
execute if items entity @s weapon.offhand * run function cc:swap_hands
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[item_model="air",custom_name=""]
tellraw @a[tag=debug] ["debug aft: ",{nbt:"equipment.offhand",entity:"@s",color:"aqua"}]

execute if entity @a[tag=debug] run say /offhand cor