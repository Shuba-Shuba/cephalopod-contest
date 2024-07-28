# setup
scoreboard players set 2000 calc 2000
scoreboard players set 100 calc 100
scoreboard players set 25 calc 25
scoreboard players set 10 calc 10
scoreboard players set 8 calc 8
scoreboard players set 5 calc 5
scoreboard players set .reduction calc 400
scoreboard players operation .tmp_toughness calc = .toughness calc
scoreboard players operation .tmp_armor1 calc = .armor calc
scoreboard players operation .tmp_armor2 calc = .armor calc
scoreboard players operation .tmp_dmg calc = .dmg calc
scoreboard players operation .tmp_dmg calc /= 10 calc

# calculate defense reduction
scoreboard players operation .tmp_toughness calc += 8 calc
scoreboard players operation .reduction calc /= .tmp_toughness calc
scoreboard players operation .reduction calc *= .tmp_dmg calc

# apply defense reduction
scoreboard players operation .tmp_armor1 calc *= 100 calc
scoreboard players operation .tmp_armor1 calc -= .reduction calc

# apply caps
scoreboard players operation .tmp_armor2 calc *= 100 calc
scoreboard players operation .tmp_armor2 calc /= 5 calc
scoreboard players operation .tmp_armor1 calc > .tmp_armor2 calc
scoreboard players operation .tmp_armor1 calc < 2000 calc

# calculate damage multiplier
scoreboard players operation .tmp_armor1 calc /= 25 calc
scoreboard players set .multiplier calc 100
scoreboard players operation .multiplier calc -= .tmp_armor1 calc

# apply damage multiplier and round
scoreboard players operation .dmg calc *= .multiplier calc
#scoreboard players add .dmg calc 50
scoreboard players operation .dmg calc /= 100 calc