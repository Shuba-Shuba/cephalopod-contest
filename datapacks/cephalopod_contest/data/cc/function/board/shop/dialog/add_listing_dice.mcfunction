# constructs a dialog action for a dice listing to insert into an inline shop dialog

# rolls: int array
# name: text component
# price: int >= 0
# id: int > 0

# do not show listing if player already has this die
$execute if items entity @s container.* *[custom_data~{rolls:$(rolls)}] run return fail

# template
$data modify storage cc:board tmp set value {\
    label: [{text:""},$(name)," - $$(price)"],\
    tooltip: [$(description),"\n"],\
    width: 200,\
    action: {\
        type: "run_command",\
        command: "trigger board_shop set -2"\
    }\
}

# can player afford it?
$execute store success score #bool calc if score @s board_money matches $(price)..
$execute if score #bool calc matches 1 run data modify storage cc:board tmp.action.command set value "trigger board_shop set $(id)"
execute unless score #bool calc matches 1 run data modify storage cc:board tmp.label[0].color set value "red"

# rolls
$data modify storage cc:board tmp_rolls set value $(rolls)
item replace block 0 -64 0 container.0 with carrot_on_a_stick
item modify block 0 -64 0 container.0 cc:board_dice
data modify storage cc:board tmp.tooltip append from block 0 -64 0 Items[0].components.minecraft:lore[]
data modify storage cc:board tmp.tooltip insert -2 value "\n"

# add dialog action to list
data modify storage cc:board shop_listings append from storage cc:board tmp

# clean up
data remove storage cc:board tmp_rolls
data remove storage cc:board tmp