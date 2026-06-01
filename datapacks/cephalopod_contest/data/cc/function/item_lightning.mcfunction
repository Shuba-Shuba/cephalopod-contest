schedule function cc:lightning_remove 1s
tellraw @a ["",{selector:"@s"}," struck everyone with lightning"]
execute as @a[tag=!out,tag=!this] at @s positioned ~ ~0.5 ~ run function cc:item_lightning_victim
item replace entity @s weapon.mainhand with air