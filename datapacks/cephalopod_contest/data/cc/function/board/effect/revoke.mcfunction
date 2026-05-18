attribute @s[tag=effect.health_up] max_health modifier remove cc:board.health_up
attribute @s[tag=effect.speed_up] movement_speed modifier remove cc:board.speed_up
attribute @s[tag=effect.damage_up] attack_damage modifier remove cc:board.damage_up
attribute @s[tag=effect.no_knockback] knockback_resistance modifier remove cc:board.no_knockback
tag @s remove effect.health_up
tag @s remove effect.speed_up
tag @s remove effect.damage_up
tag @s remove effect.no_knockback

attribute @s[tag=effect.health_down] max_health modifier remove cc:board.health_down
attribute @s[tag=effect.speed_down] movement_speed modifier remove cc:board.speed_down
attribute @s[tag=effect.damage_down] attack_damage modifier remove cc:board.damage_down
attribute @s[tag=effect.gravity_up] gravity modifier remove cc:board.gravity_up
tag @s remove effect.health_down
tag @s remove effect.speed_down
tag @s remove effect.damage_down
tag @s remove effect.gravity_up