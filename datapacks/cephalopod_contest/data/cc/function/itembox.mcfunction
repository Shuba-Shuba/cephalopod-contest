title @s actionbar ["Press [",{keybind:"key.jump"},"] to use items"]
scoreboard players set @n[type=armor_stand,tag=itembox] itembox_cd 100
item replace entity @n[type=armor_stand,tag=itembox] armor.head with air
loot give @s loot cc:itembox