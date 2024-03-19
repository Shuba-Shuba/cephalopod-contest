# start iteratively placing creepers
#execute store result score %bomb_level game run data get entity @s data.level
#scoreboard players add %bomb_level game 1
#function lobster:init_level_bomb_loop

# place level 1 bomb hardcoded instead
summon creeper ~ ~ ~ {ignited:0b,powered:1b,Tags:["bomb_level"],Fuse:15s,NoAI:1b,Invulnerable:1b,ExplosionRadius:2b}
summon creeper ~ ~ ~ {ignited:0b,powered:1b,Tags:["bomb_level"],Fuse:15s,NoAI:1b,Invulnerable:1b,ExplosionRadius:1b}

# remove marker
kill @s