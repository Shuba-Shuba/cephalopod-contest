data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{shb:1b,CustomModelData:205,HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1000000,Operation:0,UUID:[I;211617564,1405111336,-1976366581,-1847700334],Slot:"mainhand"}]}}

data modify storage shb:gun stats set value {id:0,cd:16,autodelay:2,autofire:2,drawtime:16,semiauto:1,ammo:{count:18,type:1b},reload:{time:4,per:1,mag:18},sfx:{shoot:1,reload:1},name:'{"text":"Burst Rifle","italic":false}',range:400,dmg:7,falloff:{buffer:60,divisor:2}}
execute store result storage shb:gun stats.id int 1 run scoreboard players add #gun-id stats 1
data modify block 0 -63 0 front_text.messages[0] set value '{"score":{"objective":"stats","name":"#gun-id"}}'
execute store result score #range calc run data get storage shb:gun stats.range 0.25

item modify block 0 -64 0 container.0 shb:set_nbt

loot give @s mine 0 -64 0 air{drop_contents:true}