data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:ender_eye",Count:1b,components:{"minecraft:attribute_modifiers":{modifiers:[{type:"generic.attack_speed",slot:"mainhand",uuid:[I;211617564,1405111336,-1976366581,-1847700334],name:"generic.attack_speed",amount:-1000000,operation:"add_value"}],show_in_tooltip:0b},"minecraft:custom_model_data":207,"minecraft:custom_data":{shb:1b}}}

data modify storage shb:gun stats set value {id:0,cd:5,autodelay:0,autofire:0,drawtime:5,semiauto:1,ammo:{count:1,type:1b},reload:{time:20,per:1,mag:1},sfx:{shoot:3,reload:3},name:'{"text":"Musket","italic":false}',range:800,dmg:13,falloff:{buffer:100,divisor:2}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1b}]