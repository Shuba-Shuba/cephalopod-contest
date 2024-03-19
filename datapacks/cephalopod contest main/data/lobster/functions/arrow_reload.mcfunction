scoreboard players set @s arrow_time 0

item replace entity @s[scores={class=0,arrow_count=0}] hotbar.8 with arrow
give @s[scores={class=0,arrow_count=1..}] arrow

item replace entity @s[scores={class=1,arrow_count=0}] hotbar.8 with spectral_arrow
give @s[scores={class=1,arrow_count=1..}] spectral_arrow

item replace entity @s[scores={class=2,arrow_count=0}] hotbar.8 with iron_ingot
give @s[scores={class=2,arrow_count=1..39}] iron_ingot

item replace entity @s[scores={class=3,arrow_count=0}] hotbar.8 with arrow
give @s[scores={class=3,arrow_count=1..}] arrow