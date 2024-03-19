scoreboard players operation #tmp stats = .ammo.count stats
scoreboard players operation #tmp stats -= .reload.mag stats
scoreboard players operation .ammo.reserve stats += #tmp stats
scoreboard players operation .ammo.count stats = .reload.mag stats
scoreboard players set @s reload.repeat -1