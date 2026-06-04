# constructs a generic shop listing

# name: text component
# description: text component
# price: int >= 0
# id: int > 0

# template
$data modify storage cc:board tmp set value {\
    label: [{text:""},$(name)," - $$(price)"],\
    tooltip: $(description),\
    width: 200,\
    action: {\
        type: "run_command",\
        command: "trigger board_shop set -2"\
    }\
}

# can player afford it?
$execute store success score #bool calc if score @s board_money matches $(price)..
execute unless score #bool calc matches 1 run data modify storage cc:board tmp.label[0].color set value "red"

# add shop item to list if affordable
$execute if score #bool calc matches 1 run data modify storage cc:board shop.items append value {\
    name: [$(name)],\
    description: [$(description)],\
    price: $(price),\
    id: $(id)\
}
execute if score #bool calc matches 1 run function cc:board/shop/dialog/set_trigger_num

# add dialog action to list
data modify storage cc:board shop.actions append from storage cc:board tmp

# clean up
data remove storage cc:board tmp