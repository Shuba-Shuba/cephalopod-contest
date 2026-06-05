# constructs a star shop listing

# @return
# -1 - doesn't have star
# 0 - in stock, player can't afford
# 1 - in stock, player may buy

# template
data modify storage cc:board tmp set value {\
    label: {text:"No star for sale",color:"red"},\
    tooltip: "try another shop!",\
    width: 200,\
    action: {\
        type: "run_command",\
        command: "trigger board_shop set -2"\
    }\
}

# star in stock?
$data modify storage cc:board tmp_str set value $(shop)
execute store success score #bool calc run data modify storage cc:board tmp_str set from storage cc:board star_shop.shop
data remove storage cc:board tmp_str
execute if score #bool calc matches 1 run data modify storage cc:board shop.actions append from storage cc:board tmp
execute if score #bool calc matches 1 run data remove storage cc:board tmp
execute if score #bool calc matches 1 run return -1
data modify storage cc:board tmp.label.text set value "Star - $10"

# can player afford star?
execute store success score #bool calc if score @s board_money matches 10..
execute if score #bool calc matches 1 run data modify storage cc:board tmp.tooltip set value "this is the thing that makes you win the game"
execute if score #bool calc matches 1 run data remove storage cc:board tmp.label.color
execute unless score #bool calc matches 1 run data modify storage cc:board tmp.tooltip set value "bro sucks"

# add shop item to list
execute if score #bool calc matches 1 run data modify storage cc:board shop.items append value {star: true, price: 10}
execute if score #bool calc matches 1 run function cc:board/shop/dialog/set_trigger_num

# add dialog action to list
data modify storage cc:board shop.actions append from storage cc:board tmp

# clean up
data remove storage cc:board tmp
return run scoreboard players get #bool calc