data modify storage cc:board tmp.try set from storage cc:board tmp.list[-1]
function cc:board/leave/check with storage cc:board tmp

scoreboard players remove .list game 1
execute if score .list game matches 1.. run data remove storage cc:board tmp.list[-1]
execute if score .list game matches 1.. run function cc:board/leave/search