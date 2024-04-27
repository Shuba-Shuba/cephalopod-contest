scoreboard players set @s arrow_time 0
item replace entity @s[scores={boss_fight_class=0..2,arrow_count=0}] weapon.offhand with arrow
give @s[scores={boss_fight_class=0..2,arrow_count=1..2}] arrow
item replace entity @s[scores={boss_fight_class=3,arrow_count=0}] weapon.offhand with minecraft:tipped_arrow[potion_contents={potion:"minecraft:harming"}]
give @s[scores={boss_fight_class=3,arrow_count=1..2}] minecraft:tipped_arrow[potion_contents={potion:"minecraft:harming"}]