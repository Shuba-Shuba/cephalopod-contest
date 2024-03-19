execute if score @s boss_fight_class matches 0 run tellraw @a ["",{"selector":"@s"}," playing as: Movement"]
execute if score @s boss_fight_class matches 1 run tellraw @a ["",{"selector":"@s"}," playing as: Bomber"]
execute if score @s boss_fight_class matches 2 run tellraw @a ["",{"selector":"@s"}," playing as: Melee"]
execute if score @s boss_fight_class matches 3 run tellraw @a ["",{"selector":"@s"}," playing as: Archer"]