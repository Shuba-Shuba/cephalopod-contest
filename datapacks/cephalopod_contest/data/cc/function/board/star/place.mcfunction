$data modify storage cc:board star_shop set from storage cc:board spacelist[{shop:$(shop)}]
$tellraw @a "placed star at $(shop)"
# $execute positioned $(x) $(y) $(z) run tp @a ~ ~32 ~