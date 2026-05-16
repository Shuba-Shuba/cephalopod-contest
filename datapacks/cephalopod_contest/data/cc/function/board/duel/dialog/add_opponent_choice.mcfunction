# constructs a dialog action for a potential opponent to insert into an inline duel dialog
# @s = potential opponent

# template
data modify storage cc:board tmp.action set value {\
    width: 200,\
    action: {\
        type: "run_command"\
    }\
}

# resolve player icon & name
tag @s add this1
data modify storage cc:board tmp.label set value [{player:{}}," ",{selector:"@p[tag=this1]"}]
data modify storage cc:board tmp.label[0].player.id set from entity @s UUID
data modify block 0 -63 0 front_text.messages[0] set from storage cc:board tmp.label
data modify storage cc:board tmp.action.label set from block 0 -63 0 front_text.messages[0]

# concat player turn number to trigger command
execute store result storage cc:board tmp.turn int 1 run scoreboard players get @s board_turn
function cc:board/duel/dialog/turn_number with storage cc:board tmp

# clean up
tag @s remove this1
data modify storage cc:board duel.actions append from storage cc:board tmp.action
data remove storage cc:board tmp