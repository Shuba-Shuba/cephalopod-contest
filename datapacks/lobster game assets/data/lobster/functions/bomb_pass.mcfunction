tag @a remove bomb
tag @s add bomb
clear @a tnt
item replace entity @s armor.head with tnt{Enchantments:[{id:"knockback",lvl:2},{id:"binding_curse",lvl:1}]}
tellraw @s "you just got bomb'd. pass it on or else you die"
advancement revoke @a only lobster:bomb
say oof