# return performer to audience
tag @a[tag=stage] add stage_done
scoreboard players set @a[tag=stage] talent_rating 0
scoreboard players operation @a[tag=stage] talent_rating += @a[tag=!stage,tag=!out] talent_vote
execute if entity @a[tag=stage] run tellraw @a ["",{"selector":"@a[tag=stage]"},"'s final rating: ",{"score":{"objective":"talent_rating","name":"@a[tag=stage,limit=1]"}}]
execute if score %map game matches 0 in cc:void run tp @a[tag=stage,tag=!ded] 601 107 519 0 0
clear @a[tag=stage,tag=!ded]

# get new performer
tag @a remove stage
tag @r[tag=!stage_done,tag=!ded,tag=!out] add stage
execute if score %map game matches 0 in cc:void run tp @a[tag=stage] 601 108 534 180 0
scoreboard players operation %second game = time.talent config
scoreboard players set @a talent_vote 0
tellraw @a ["Now on stage: ",{"selector":"@a[tag=stage]"},{"text":"\n[Downvote]","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger talent_vote set -1"},"hoverEvent":{"action":"show_text","value":"-1"}}," ",{"text":"[Unvote]","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger talent_vote set 0"},"hoverEvent":{"action":"show_text","value":"0"}}," ",{"text":"[Upvote]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger talent_vote set 1"},"hoverEvent":{"action":"show_text","value":"+1"}}]
place template minecraft:stage 576 81 502
give @a[tag=stage] minecraft:netherite_pickaxe{Unbreakable:1b,CanDestroy:["#cc:all"],Enchantments:[{id:"efficiency",lvl:255}]}
give @a[tag=stage] minecraft:netherite_axe{Unbreakable:1b,CanDestroy:["#cc:all"],Enchantments:[{id:"efficiency",lvl:255}]}
give @a[tag=stage] minecraft:netherite_shovel{Unbreakable:1b,CanDestroy:["#cc:all"],Enchantments:[{id:"efficiency",lvl:255}]}
give @a[tag=stage] minecraft:netherite_hoe{Unbreakable:1b,CanDestroy:["#cc:all"],Enchantments:[{id:"efficiency",lvl:255}]}
loot give @a[tag=stage] loot cc:improv