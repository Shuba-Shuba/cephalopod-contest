advancement revoke @s only cc:tnt/place_level_bomb
scoreboard players set @s level_bomb_cd 100
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 command_block{auto:true,Command:"function cc:init_level_bomb"} replace #cc:green_banners strict