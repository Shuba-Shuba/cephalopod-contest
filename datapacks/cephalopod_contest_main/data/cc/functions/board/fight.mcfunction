# @s = player who most recently landed on the occupied space
# stop ending turn because it's fight time
schedule clear cc:board/end_turn
tellraw @a ["[FIGHT ALERT] ",{"selector":"@s"}," landed on a space occupied by someone else! TIME TO FIGHT!"]

# teleport all players who landed on this space back here
execute as @e[type=marker,tag=board_player,distance=..1] at @a[tag=!out] if score @p board_turn = @s board_turn run tag @p add fight
execute as @a[tag=fight] run function cc:board/fight_prepare
effect clear @s glowing

# clock
scoreboard players set %tick game 0
scoreboard players set %second game 0
bossbar set cc:time value 0
scoreboard players set %fight game 1

# bounty
scoreboard players add fight.count board_turn 1
scoreboard players operation fight.bounty board_turn = fight.count board_turn
scoreboard players operation fight.bounty board_turn *= fight.bounty board_turn
tellraw @a ["Last player alive steals $",{"score":{"name":"fight.bounty","objective": "board_turn"}}," from loser(s)"]

# remove armor stands on this space
kill @e[type=armor_stand,distance=..1]