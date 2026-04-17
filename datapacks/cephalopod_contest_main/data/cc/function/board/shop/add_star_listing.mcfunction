# constructs a dialog action for the star listing to insert into an inline shop dialog

# template
data modify storage cc:board tmp set value {\
    label: {text:"Star - $10"},\
    width: 200,\
    action: {\
        type: "run_command",\
        command: "trigger board_shop set -2"\
    }\
}

# can player afford star?
execute store success score #bool calc if score @s board_money matches 10..
execute if score #bool calc matches 1 run data modify storage cc:board tmp.action.command set value "trigger board_shop set 1"
execute unless score #bool calc matches 1 run data modify storage cc:board tmp.label.color set value "red"
execute unless score #bool calc matches 1 run data modify storage cc:board tmp.tooltip set value "bro sucks"