scoreboard players operation .list game = %board_players_first game
data modify storage cc:board tmp.list set from storage cc:board players
function cc:board/leave/search
data remove storage cc:board tmp