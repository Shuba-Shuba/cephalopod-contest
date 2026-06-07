data modify storage cc:board tmp.shop set from block ~ ~ ~ front_text.messages[1]
data modify storage cc:board tmp.avoid1 set from block ~ ~ ~ front_text.messages[2]
data modify storage cc:board tmp.avoid2 set from block ~ ~ ~ front_text.messages[3]

# this works if and only if branching spaces (forks) are never directly before shops, unless the shop is on the first branch checked
# no forks on the 2026 wild west board are directly before any shops (on any branches)
data modify storage cc:board spacelist[-1].before_shop set from block ~ ~ ~ front_text.messages[1]