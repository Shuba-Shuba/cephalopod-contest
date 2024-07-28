item modify entity @s hotbar.0 cc:unload_crossbow
item replace entity @s[scores={arrow_count=0}] hotbar.8 with arrow
give @s[scores={arrow_count=1}] arrow
scoreboard players add @s arrow_count 1