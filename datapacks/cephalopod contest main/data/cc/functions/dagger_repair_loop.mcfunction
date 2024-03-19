scoreboard players remove .r raycast 1
setblock ~ ~ ~ tinted_glass keep
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 run function cc:dagger_repair_loop