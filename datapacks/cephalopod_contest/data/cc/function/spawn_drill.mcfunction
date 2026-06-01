clear @s carrot_on_a_stick[custom_data={tnt:13b}]
scoreboard players set @s drill_cd 160
tag @s add this
execute anchored eyes positioned ^ ^ ^ summon marker run function cc:init_drill
tag @s remove this