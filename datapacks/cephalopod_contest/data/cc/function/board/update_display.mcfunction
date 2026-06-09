# @s = player

# calculate display score
# players' score for this calculation more or less should be in the same order as ideal placement
# star count x1000 is effectively unreachable from money, so money only matters for comparing players with the same amount of stars
# ex: 2 stars + 7 coins = display score of 2007
# ex: 1 star + 25 coins = display score of 1025
# the exact score value does not matter, only the order of the players' scores because it's hidden
scoreboard players operation .display calc = @s board_stars
scoreboard players operation .display calc *= integers.1000 calc
scoreboard players operation .display calc += @s board_money
scoreboard players operation @s board_display = .display calc

# display star count + money on scoreboard
scoreboard players operation .stars calc = @s board_stars
scoreboard players operation .money calc = @s board_money
data modify storage tmp stars set value ""
execute if score .stars calc matches 1 run data modify storage tmp stars set value "1 star + "
execute if score .stars calc matches 2.. run data modify storage tmp stars set value [{score:{name:".stars",objective:"calc"}}," stars + "]
data modify storage tmp money set value ["$",{score:{name:".money",objective:"calc"}}]
execute if score .money calc matches ..-1 run data modify storage tmp money[0] set value "-$"
execute if score .money calc matches ..-1 run scoreboard players operation .money calc *= -1 calc
data modify block 0 -63 0 front_text.messages[0] set value [{nbt:"stars",storage:"tmp",interpret:true},{nbt:"money",storage:"tmp",interpret:true}]
data modify storage tmp text set from block 0 -63 0 front_text.messages[0]
function cc:board/update_display_macro with storage tmp
data remove storage tmp text
data remove storage tmp stars
data remove storage tmp money