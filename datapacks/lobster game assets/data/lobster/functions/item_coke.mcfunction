tag @r[tag=!this] add hit
effect give @a[tag=hit] nausea 10 0 false
tellraw @a[tag=hit] ["Oh no! You got drugged by ",{"selector":"@s"}]
tag @a remove hit