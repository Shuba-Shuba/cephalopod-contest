execute if score @s class matches 0 run function lobster:shift/gardener
execute if score @s class matches 1 run function lobster:shift/technician
execute if score @s class matches 2 run function lobster:shift/engineer
execute if score @s class matches 3 unless score @s focus_time matches 1.. run function lobster:shift/architect