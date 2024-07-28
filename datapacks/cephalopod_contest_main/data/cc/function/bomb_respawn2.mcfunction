bossbar set cc:time max 25
bossbar set cc:time value 25
scoreboard players set %second game 25
tag @a remove winner
tag @a remove bomb
tag @r[tag=!out,tag=!ded] add bomb
item replace entity @a[tag=bomb] armor.head with minecraft:tnt[enchantments={knockback:2,binding_curse:1}]