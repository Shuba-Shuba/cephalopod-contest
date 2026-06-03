# @s = anonymous marker
data modify storage cc:board spacelist set value []
function cc:board/spacelist/add_space
kill @e[type=marker,tag=tmp_space_seen]
kill @s