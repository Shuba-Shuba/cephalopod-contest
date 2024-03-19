execute store result score #damage raycast run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result storage shb:degrade Damage int 1 run scoreboard players add #damage raycast 1
item modify entity @s armor.feet shb:degrade

execute store result score #damage raycast run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute store result storage shb:degrade Damage int 1 run scoreboard players add #damage raycast 1
item modify entity @s armor.legs shb:degrade

execute store result score #damage raycast run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute store result storage shb:degrade Damage int 1 run scoreboard players add #damage raycast 1
item modify entity @s armor.chest shb:degrade

execute store result score #damage raycast run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute store result storage shb:degrade Damage int 1 run scoreboard players add #damage raycast 1
item modify entity @s armor.head shb:degrade

# goofy ass gun game cephalopod
execute if score %mode game matches 13 store result score #netherite game run clear @s #cc:netherite{gungame:1b}
execute if score %mode game matches 13 if score #netherite game matches 1.. at @s run playsound minecraft:item.shield.break player @a ~ ~ ~