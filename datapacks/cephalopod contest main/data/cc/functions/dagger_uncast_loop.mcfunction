scoreboard players remove .r raycast 1
fill ~.1 ~.1 ~.1 ~-.1 ~-.1 ~-.1 air replace tinted_glass
execute if score .r raycast matches 1.. positioned ^ ^ ^0.5 run function cc:dagger_uncast_loop