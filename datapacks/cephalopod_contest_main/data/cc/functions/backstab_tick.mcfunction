# backstabber used
execute as @a[scores={class=0,backstab_break=1}] if score %in game matches 1 run function cc:backstab_used
execute as @a[scores={class=0,backstab_break=1}] if score %in game matches 2 run function cc:backstab_used_board

# backstab check
tag @a remove backstab_valid
scoreboard players set @a[scores={class=0}] backstab_valid 0
execute if score %in game matches 1 as @a[tag=!out,tag=!ded] run function cc:backstab_check
execute if score %in game matches 2 as @a[tag=fight] run function cc:backstab_check
# backstabber used (board game; after check b/c we look at who could've been hit)

# backstabber item
execute as @a[scores={backstab_cd=1}] run tellraw @a[tag=ded] ["",{"selector":"@s"}," reloaded Backstab"]
scoreboard players remove @a[scores={backstab_cd=1..}] backstab_cd 1
item replace entity @a[scores={class=0,backstab_valid=1,backstab_cd=0}] hotbar.0 with minecraft:iron_sword[damage=249,custom_name='{"text":"GET THE BACKSTAB!!","italic":false}',enchantments={knockback:10},custom_model_data=3,custom_data={backstab:1b}]
item replace entity @a[scores={class=0,backstab_valid=0,backstab_cd=0}] hotbar.0 with minecraft:iron_sword[damage=249,custom_name='{"text":"Backstabber","italic":false}',custom_model_data=3,custom_data={backstab:1b}]

# auto-backstab cheat for shuba
execute if score tnt.autostab.enabled config matches 1 as Shuba_Shuba if predicate shb:looking_at_entity if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{knockback:10}}}} run player Shuba_Shuba attack