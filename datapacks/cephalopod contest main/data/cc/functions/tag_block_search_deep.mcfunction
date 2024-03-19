# this is a deeper search, checking all 27 blocks in the 3x3x3 area containing the arrow
$execute store success score #bool game positioned ~1 ~ ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~ ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~ ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~-1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~ ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~ ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~ ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~-1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~ ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~-1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~-1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~ ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~-1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~ ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~-1 ~1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
execute if score #bool game matches 1 run tellraw @a "Found block tagged by triangulator from deep search"
execute if score #bool game matches 0 run tellraw @a "ERROR: Cannot find block tagged by triangulator arrow, possible bug"
execute if score #bool game matches 0 run function cc:tag_invalid