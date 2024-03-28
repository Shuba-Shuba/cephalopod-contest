# basic shit
execute unless score @s ability matches 1..4 run scoreboard players set @s ability 1
execute in cc:void if score %map game matches 0 run tp -238.0 99 687.0
#execute in cc:void if score %map game matches 1 run tp -683.0 110 711.0
execute in cc:void if score %map game matches 1 run tp -956 113 633
give @s iron_sword{Unbreakable:1b,CustomModelData:3}

# abilities
schedule function cc:return_ability 15s