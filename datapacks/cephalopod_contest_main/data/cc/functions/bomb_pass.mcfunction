tag @a remove bomb
tag @s add bomb
clear @a tnt
item replace entity @s armor.head with minecraft:tnt[enchantments={knockback:2,binding_curse:1}]
tellraw @s "you just got bomb'd. pass it on or else you die"
advancement revoke @a only cc:bomb
say oof