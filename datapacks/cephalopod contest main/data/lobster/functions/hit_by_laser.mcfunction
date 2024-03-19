tag @s add hit

# mini tnt (-1 life)
execute if score %mode game matches 24 at @s anchored eyes run function lobster:death_tnt

# lobby (die)
execute unless score %mode game matches 24 run damage @s 1000 minecraft:sonic_boom by @p[tag=this]