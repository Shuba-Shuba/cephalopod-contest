title @a title "GO"
execute in sp:void run fill 1509 96 339 1533 71 339 air destroy
execute in sp:void run fill 1711 115 100 1711 96 74 air destroy
#scoreboard players set %tree game 1
scoreboard players set %mode game 16
scoreboard players set %second game 0
scoreboard players set %increment game 1
scoreboard players set @e[type=armor_stand,tag=itembox] itembox_cd 0