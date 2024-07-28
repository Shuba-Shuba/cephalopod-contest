execute if score @s class matches 0 run function cc:shift/gardener
execute if score @s class matches 1 run function cc:shift/technician
execute if score @s class matches 2 run function cc:shift/engineer
execute if score @s class matches 3 unless score @s focus_time matches 1.. run function cc:shift/architect