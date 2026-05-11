# prepare the player for kit

clear @s
effect clear @s
scoreboard players set @s Kit_ID 34
attribute @s minecraft:max_health base set 20
effect give @s minecraft:saturation 80 255 true
tellraw @s "Now Using: Evoker"

# give the player the kit contents

give @s minecraft:carrot_on_a_stick[custom_name={text:"Evoker Fangs",italic:false},custom_data={evoker:1b}]
item replace entity @s armor.head with minecraft:chainmail_helmet[unbreakable={}]
give @s cooked_beef 16
give @s minecraft:lingering_potion[custom_name={text:"Neurotoxin",color:"dark_green",italic:false},potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:4,duration:160}],custom_color:41995}] 3