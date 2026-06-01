effect give @a[tag=!out,tag=!this] darkness 5 0 false
tellraw @a ["",{selector:"@s"}," gave everyone darkness"]
item replace entity @s weapon.mainhand with air