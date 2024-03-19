scoreboard players set @s arrow_time 0
item replace entity @s[scores={boss_fight_class=0..2,arrow_count=0}] weapon.offhand with arrow
give @s[scores={boss_fight_class=0..2,arrow_count=1..2}] arrow
item replace entity @s[scores={boss_fight_class=3,arrow_count=0}] weapon.offhand with tipped_arrow{Potion:"minecraft:harming"}
give @s[scores={boss_fight_class=3,arrow_count=1..2}] tipped_arrow{Potion:"minecraft:harming"}