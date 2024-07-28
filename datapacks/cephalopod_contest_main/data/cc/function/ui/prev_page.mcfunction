scoreboard players remove .page ui 1
scoreboard players operation .page ui %= .page_count ui

scoreboard players operation .page_display ui = .page ui
scoreboard players add .page_display ui 1
data merge entity @e[type=text_display,tag=settings_ui,limit=1] {text:'[{"text":"Gamemodes Page ","color":"white"},{"score":{"name":".page_display","objective":"ui"}}]'}

execute if score .page ui matches 0 run function cc:ui/page0
execute if score .page ui matches 1 run function cc:ui/page1
execute if score .page ui matches 2 run function cc:ui/page2
execute if score .page ui matches 3 run function cc:ui/page3