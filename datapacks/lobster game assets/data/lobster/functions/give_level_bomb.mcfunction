# 0 -64 0 = empty usable shulker box

# put spawn egg in box
#data modify block 0 -64 0 Items append value {Slot:0b,id:"minecraft:creeper_spawn_egg",Count:1b,tag:{tnt:2b,HideFlags:16,CanPlaceOn:["#lobster:all"],EntityTag:{id:"minecraft:marker",Tags:["bomb_level_init"],data:{level:0}},display:{Name:'{"text":"Creeper Bomb","italic":false}'}}}

# modify spawned marker's level tag and name of spawn egg to match its level
#execute if score @s bomb_level matches 3 run scoreboard players set #tmp bomb_level 3
#execute if score @s bomb_level matches 3 run data modify block 0 -64 0 Items[0].tag.EntityTag.data.level set value 3
#scoreboard players operation @s bomb_level %= 3 calc
#execute unless score @s bomb_level matches 3 store result score #tmp bomb_level store result block 0 -64 0 Items[0].tag.EntityTag.data.level int 1 run scoreboard players add @s bomb_level 1
#data modify block 0 -63 0 front_text.messages[0] set value '[{"text":"Level ","italic":false},{"score":{"name":"#tmp","objective":"bomb_level"}}," Bomb"]'
#data modify block 0 -64 0 Items[0].tag.display.Name set from block 0 -63 0 front_text.messages[0]
#data modify block 0 -64 0 Items[0].tag.EntityTag.CustomName set from block 0 -63 0 front_text.messages[0]

# give spawn egg
#item replace entity @s hotbar.2 from block 0 -64 0 container.0
item replace entity @s hotbar.2 with creeper_spawn_egg{tnt:2b,HideFlags:16,CanPlaceOn:["#lobster:all"],EntityTag:{id:"minecraft:marker",Tags:["bomb_level_init"],data:{level:0}},display:{Name:'{"text":"Creeper Bomb","italic":false}'}}

# tell spectators
tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Creeper Bomb"]