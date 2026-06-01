tag @r[tag=!out,tag=!this] add hit
effect give @a[tag=hit] nausea 10 0 false
tellraw @a[tag=hit] ["Oh no! You got drugged by ",{selector:"@s"}]
tellraw @s ["Drugged ",{selector:"@a[tag=hit]"}]
tag @a remove hit
item replace entity @s weapon.mainhand with air