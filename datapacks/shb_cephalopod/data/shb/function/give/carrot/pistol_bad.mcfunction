data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b,components:{"minecraft:attribute_modifiers":{modifiers:[{type:"generic.attack_speed",slot:"mainhand",uuid:[I;211617564,1405111336,-1976366581,-1847700334],name:"generic.attack_speed",amount:-1000000,operation:"add_value"}],show_in_tooltip:0b},"minecraft:custom_model_data":201,"minecraft:custom_data":{shb:1b}}}

data modify storage shb:gun stats set value {id:0,cd:8,autodelay:0,autofire:0,drawtime:10,semiauto:1,ammo:{count:8,type:1b},reload:{time:5,per:1,mag:8},sfx:{shoot:1,reload:1},name:'{"text":"shoddy shotty","italic":false}',range:200,dmg:5,falloff:{buffer:40,divisor:1}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1b}]