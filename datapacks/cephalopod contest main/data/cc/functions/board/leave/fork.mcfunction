# $(name) = username of player who left
function cc:board/block/fork_auto
$scoreboard players reset $(name) board_await
$scoreboard players reset $(name) board_fork
say leave fork