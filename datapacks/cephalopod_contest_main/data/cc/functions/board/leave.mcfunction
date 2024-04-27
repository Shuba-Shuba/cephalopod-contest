# start searching player list to see who left
scoreboard players operation .list game = %board_players_all game
data modify storage cc:board tmp.list set from storage cc:board players
function cc:board/leave/search
data remove storage cc:board tmp