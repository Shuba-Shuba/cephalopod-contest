bossbar set lobster:time max 25
bossbar set lobster:time value 25
scoreboard players set %second game 25
tag @a remove winner
tag @a remove bomb
tag @r[tag=!out,tag=!ded] add bomb
item replace entity @a[tag=bomb] armor.head with tnt{Enchantments:[{id:"knockback",lvl:2},{id:"binding_curse",lvl:1}]}