setblock ~ ~ ~ birch_wall_sign[facing=north]{front_text:{messages:['""','"Pothead [OLD]"','{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"function cc:ui/disable14"}}','""']}} destroy
tag @e[type=marker,tag=mode_rng,tag=mode14] add enabled
tellraw @s {"text":"BAD GAME WARNING: Pothead is an incomplete and deprecated project, but still functional. Gameplay is very counterintuitive. Future updates are unlikely.","color":"yellow"}