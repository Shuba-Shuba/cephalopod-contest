data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b,components:{"minecraft:attribute_modifiers":{modifiers:[{type:"generic.attack_speed",slot:"mainhand",id:"generic.attack_speed",amount:-1000000,operation:"add_value"}],show_in_tooltip:0b},"minecraft:custom_model_data":205,"minecraft:custom_data":{shb:1b}}}

data modify storage shb:gun stats set value {id:0,cd:16,autodelay:2,autofire:2,drawtime:16,semiauto:1,ammo:{count:18,type:1b},reload:{time:4,per:1,mag:18},sfx:{shoot:1,reload:1},name:'{"text":"Burst Rifle","italic":false}',range:400,dmg:7,falloff:{buffer:60,divisor:2}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1}]