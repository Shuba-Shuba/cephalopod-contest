execute unless entity @a[tag=!out,tag=!ded,gamemode=adventure,tag=!safe] run scoreboard players set condition.press button 1
execute if score condition.press button matches 1 unless score condition.ded button matches 1 run tag @a remove safe
execute if score condition.press button matches 1 if score condition.ded button matches 1 run tag @a[tag=!out,tag=!ded] add winner
execute if score condition.press button matches 1 if score condition.ded button matches 1 run function lobster:end
tag @a remove button
tag @r[tag=!out,tag=!ded,tag=!safe,tag=!tmp_safe] add button
tp @a[tag=button] 177 88 106
tp @a[tag=tmp_safe] 158 87 106
tag @a remove tmp_safe
execute store result bossbar lobster:time max run scoreboard players get time.buttons config
execute store result bossbar lobster:time value run scoreboard players get time.buttons config
scoreboard players operation %second game = time.buttons config
execute if score %choices button matches 1 run function lobster:button_reset