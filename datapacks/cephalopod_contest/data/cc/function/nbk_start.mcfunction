#scoreboard players set %tree game -1
tellraw @a "Starting Nitro Boat Karts..."
function cc:countdown/5
schedule function cc:countdown/4 1s
schedule function cc:countdown/3 2s
schedule function cc:countdown/2 3s
schedule function cc:countdown/1 4s
schedule function cc:mode/nbk 5s