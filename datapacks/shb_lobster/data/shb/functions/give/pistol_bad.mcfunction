data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:ender_eye",Count:1b,tag:{shb:1b,CustomModelData:201,HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1000000,Operation:0,UUID:[I;211617564,1405111336,-1976366581,-1847700334],Slot:"mainhand"}]}}

data modify storage shb:gun stats set value {id:0,cd:8,autodelay:0,autofire:0,drawtime:10,semiauto:0,ammo:{count:8,type:1b},reload:{time:5,per:1,mag:8},sfx:{shoot:1,reload:1},name:'{"text":"shoddy shotty","italic":false}',range:200,dmg:4,falloff:{buffer:40,divisor:1}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 air{drop_contents:true}