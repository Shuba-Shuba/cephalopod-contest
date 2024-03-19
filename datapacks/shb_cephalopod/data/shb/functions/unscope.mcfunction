execute store result storage shb:scope cmd int 1 run scoreboard players remove @s cmd 100
item modify entity @s weapon.mainhand shb:scope
scoreboard players set @s scope 0

#clear @s chainmail_leggings{shb:1b}
#execute if predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak_return