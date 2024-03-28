scoreboard players remove @s board_money 10
scoreboard players add @s board_stars 1
give @s nether_star

tellraw @s "here's your star. now get the fuck out"
tellraw @a ["",{"selector":"@s"},{"text":" bought a star!","color":"green"}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~

function cc:board/update_display