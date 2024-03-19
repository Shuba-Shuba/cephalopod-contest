scoreboard players remove .r raycast 1
tp @s ~ ~ ~
summon marker ~ ~ ~ {Tags:["focus_glass"]}
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air run function lobster:focus_loop
setblock ~ ~ ~ tinted_glass