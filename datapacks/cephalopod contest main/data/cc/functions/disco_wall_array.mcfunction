# random num 0-15 to color of wool block
$data modify storage cc:disco block set from storage cc:disco wool[$(index)]

# fill wall with that block
function cc:disco_wall_fill with storage cc:disco