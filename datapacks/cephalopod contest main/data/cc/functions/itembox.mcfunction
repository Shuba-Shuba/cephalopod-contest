title @s actionbar ["Press [",{"keybind":"key.swapOffhand"},"] to use items"]
scoreboard players set @e[type=armor_stand,tag=itembox,sort=nearest,limit=1] itembox_cd 100
item replace entity @e[type=armor_stand,tag=itembox,sort=nearest,limit=1] armor.head with air
loot give @s loot cc:itembox