data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b,components:{"minecraft:attribute_modifiers":{modifiers:[{type:"generic.attack_speed",slot:"mainhand",id:"generic.attack_speed",amount:-1000000,operation:"add_value"}],show_in_tooltip:0b},"minecraft:custom_model_data":208,"minecraft:custom_data":{shb:1b}}}

data modify storage shb:gun stats set value {id:0,cd:5,autodelay:0,autofire:0,drawtime:5,semiauto:1,ammo:{count:1,type:6b},reload:{time:50,per:1,mag:1},sfx:{shoot:4,reload:4},name:'{"text":"Gravity Gun","italic":false}',range:30,dmg:4,falloff:{buffer:10,divisor:1}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1}]