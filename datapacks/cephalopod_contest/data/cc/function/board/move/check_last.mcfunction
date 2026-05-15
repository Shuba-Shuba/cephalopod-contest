# @s = player's board item_display
# @p[tag=this] = player
tag @s add this
execute if block ~ ~-32 ~ blue_concrete as @p[tag=this] run function cc:board/block/blue
execute if block ~ ~-32 ~ blue_concrete unless entity @p[tag=this] on passengers run function cc:board/block/auto/blue with entity @s profile
execute if block ~ ~-32 ~ red_concrete as @p[tag=this] run function cc:board/block/red
execute if block ~ ~-32 ~ red_concrete unless entity @p[tag=this] on passengers run function cc:board/block/auto/red with entity @s profile
execute if block ~ ~-32 ~ purple_concrete as @p[tag=this] run function cc:board/block/purple
execute if block ~ ~-32 ~ purple_concrete unless entity @p[tag=this] on passengers run function cc:board/block/auto/purple with entity @s profile
execute if block ~ ~-32 ~ lime_concrete as @p[tag=this] run function cc:board/block/green
execute if block ~ ~-32 ~ lime_concrete unless entity @p[tag=this] on passengers run function cc:board/block/auto/green with entity @s profile
execute if block ~ ~-32 ~ black_concrete as @p[tag=this] run function cc:board/block/black
execute if block ~ ~-32 ~ black_concrete unless entity @p[tag=this] on passengers run function cc:board/block/auto/black with entity @s profile
execute if entity @e[type=item_display,distance=..1,tag=!this] as @p[tag=this] run function cc:board/fight
tag @s remove this

schedule function cc:board/end_turn 2s