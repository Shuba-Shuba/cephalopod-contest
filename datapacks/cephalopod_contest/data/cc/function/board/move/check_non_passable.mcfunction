execute if block ~ ~-32 ~ blue_concrete as @p[tag=this] run function cc:board/block/blue
execute if block ~ ~-32 ~ red_concrete as @p[tag=this] run function cc:board/block/red
execute if block ~ ~-32 ~ purple_concrete as @p[tag=this] run function cc:board/block/purple
execute if block ~ ~-32 ~ lime_concrete as @p[tag=this] run function cc:board/block/green
execute if block ~ ~-32 ~ black_concrete as @p[tag=this] run function cc:board/block/black
schedule function cc:board/end_turn 2s
execute if entity @e[type=item_display,distance=..1,tag=!this] as @p[tag=this] run function cc:board/fight