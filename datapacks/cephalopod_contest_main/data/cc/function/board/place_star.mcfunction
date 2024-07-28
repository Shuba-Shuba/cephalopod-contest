# remove previous star
#setblock 0 40 -6 air
#setblock 0 40 3 air
#setblock 0 40 12 air

# place star in a random shop
execute store result score #pos board_stars run random value 1..6

# shady shop (17%)
#execute if score #pos board_stars matches 1 run setblock 0 40 -6 gold_block
# marketplace (33%)
#execute if score #pos board_stars matches 2..3 run setblock 0 40 3 gold_block
# walmart (50%)
#execute if score #pos board_stars matches 4..6 run setblock 0 40 12 gold_block