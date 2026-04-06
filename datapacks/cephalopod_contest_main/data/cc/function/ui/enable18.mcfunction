# setblock ~ ~ ~ birch_wall_sign[facing=north]{front_text:{messages:["","Uno",{text:"[ENABLED]",color:"green",click_event:{action:"run_command",command:"function cc:ui/disable18"}},""]}} destroy
# tag @e[type=marker,tag=mode_rng,tag=mode18] add enabled

tellraw @s {text:"Coming soon! (NOT)",color:"red"}