scoreboard objectives add prng dummy
scoreboard players set %2 prng 16383
scoreboard players set %3 prng 131071
scoreboard players set %4 prng 4
scoreboard objectives add game dummy
scoreboard objectives add kills playerKillCount
scoreboard objectives add deaths deathCount
team add global
team modify global nametagVisibility never
team modify global color green
bossbar add cc:time "null"
bossbar set cc:time color blue
scoreboard objectives add walk dummy
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add integers dummy
scoreboard players set 10 integers 10
scoreboard objectives add button dummy
scoreboard objectives add map dummy
scoreboard objectives add calc dummy
scoreboard players set integers.-1 calc -1
scoreboard players set integers.8 calc 8
scoreboard players set integers.180 calc 180
scoreboard objectives add koth dummy
scoreboard objectives add rotation dummy
scoreboard objectives add night_vision trigger
scoreboard objectives add night_toggle dummy
team add blue
team modify blue nametagVisibility hideForOtherTeams
team modify blue color aqua
team add red
team modify red nametagVisibility hideForOtherTeams
team modify red color red
team add green
team modify green nametagVisibility hideForOtherTeams
team modify green color green
team add yellow
team modify yellow nametagVisibility hideForOtherTeams
team modify yellow color yellow
scoreboard objectives add launchtime dummy
scoreboard objectives add gravity dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add gravityUUID0 dummy
scoreboard objectives add gravityUUID1 dummy
scoreboard objectives add gravityUUID2 dummy
scoreboard objectives add gravityUUID3 dummy
scoreboard objectives add sneak dummy
scoreboard objectives add prayers dummy
scoreboard objectives add fake_prayers dummy
scoreboard objectives add ascending dummy
team add nun
team modify nun color red
scoreboard objectives add ability dummy
team modify nun nametagVisibility always
scoreboard objectives add broken_rod minecraft.broken:minecraft.fishing_rod
scoreboard objectives add ui dummy
scoreboard objectives add reset_times trigger
scoreboard objectives add lights_out_time trigger
scoreboard objectives add glass_jumps_time trigger
scoreboard objectives add bomb_tag_time trigger
scoreboard objectives add race_time trigger
scoreboard objectives add rlgl_time trigger
scoreboard objectives add buttons_time trigger
scoreboard objectives add koth_time trigger
scoreboard objectives add dodgeball_time trigger
scoreboard objectives add nun_run_time trigger
scoreboard objectives add chunk_time trigger
scoreboard objectives add blocks_time trigger
scoreboard objectives add sumo_time trigger
scoreboard objectives add skywars_time trigger
scoreboard objectives add sumo_hazards trigger
scoreboard objectives add admintato_time trigger
scoreboard objectives add talent_time trigger
scoreboard objectives add dog_fight_time trigger
scoreboard objectives add respawn_time trigger
scoreboard objectives add blocks dummy
scoreboard objectives add craft dummy
scoreboard objectives add arrow dummy
scoreboard objectives add tier dummy
scoreboard objectives add shelf dummy
scoreboard objectives add craft_index dummy
scoreboard objectives add craft2 dummy
scoreboard objectives add money dummy
scoreboard objectives add jail_time dummy
scoreboard objectives add heist dummy
scoreboard objectives add drugs dummy
scoreboard objectives add placeholder dummy
scoreboard objectives add potion minecraft.used:minecraft.potion
scoreboard objectives add laps dummy
scoreboard objectives add itembox_cd dummy
execute unless score cameras.enabled config matches 1.. run scoreboard players set cameras.enabled config 1
scoreboard objectives add deck dummy
scoreboard players add .id deck 0
scoreboard players add .color deck 0
scoreboard players set 3 calc 3
scoreboard objectives add turn dummy
scoreboard players set -1 calc -1
scoreboard players set 2 calc 2
scoreboard objectives add drop_card minecraft.custom:minecraft.drop
scoreboard objectives add wild_color trigger
scoreboard objectives add jailUUID0 dummy
scoreboard objectives add jailUUID1 dummy
scoreboard objectives add jailUUID2 dummy
scoreboard objectives add jailUUID3 dummy
scoreboard objectives add talent_vote trigger
scoreboard objectives add talent_rating dummy
scoreboard objectives add evoker_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add evoker_cd dummy
scoreboard objectives add fireball_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add motion0 dummy
scoreboard objectives add motion1 dummy
scoreboard objectives add motion2 dummy
scoreboard objectives add life dummy
scoreboard objectives add kitpvp_kills dummy
scoreboard objectives add kitpvp_time trigger
scoreboard players set 60 calc 60
scoreboard objectives add iron dummy
scoreboard objectives add gold dummy
scoreboard objectives add gen_level dummy
scoreboard objectives add gen_check dummy
scoreboard objectives add break_red minecraft.mined:minecraft.red_bed
scoreboard objectives add break_blue minecraft.mined:minecraft.blue_bed
scoreboard objectives add break_green minecraft.mined:minecraft.green_bed
scoreboard objectives add break_yellow minecraft.mined:minecraft.yellow_bed
scoreboard objectives add split_iron minecraft.picked_up:minecraft.iron_ingot
scoreboard objectives add split_gold minecraft.picked_up:minecraft.gold_ingot
scoreboard objectives add steal_iron dummy
scoreboard objectives add steal_gold dummy
scoreboard objectives add steal_diamond dummy
scoreboard objectives add steal_emerald dummy
scoreboard objectives add armor_level dummy
scoreboard objectives add armor_check dummy
scoreboard objectives add upgrade_bool dummy
scoreboard objectives add dog_vote trigger
scoreboard objectives add dog_fight_vote dummy
scoreboard objectives add death_time dummy
scoreboard objectives add event_money dummy
scoreboard objectives add gunclear dummy
scoreboard players set 2 calc 2
scoreboard players set 3 calc 3
scoreboard players set 4 calc 4
scoreboard players set 30 calc 30
team modify no_pvp seeFriendlyInvisibles false
scoreboard players set 16 calc 16
scoreboard objectives add bomb_level dummy
scoreboard players add tnt.track_blocks config 0
scoreboard objectives add backstab_valid dummy
scoreboard objectives add gardener_jump dummy
scoreboard objectives add class dummy
scoreboard objectives add shift_cd dummy
scoreboard objectives add backstab_break minecraft.broken:minecraft.iron_sword
scoreboard objectives add backstab_cd dummy
scoreboard objectives add laser_cd dummy
scoreboard objectives add freeze_cd dummy
scoreboard objectives add arrow_cd dummy
scoreboard objectives add level_bomb_place minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add level_bomb_cd dummy
scoreboard objectives add fuse dummy
scoreboard objectives add distance dummy
scoreboard objectives add broken_modem dummy
scoreboard objectives add broken_modem_cd dummy
execute unless entity 0000000d-0109-0097-0116-000000000104 run function cc:distance_setup
scoreboard objectives add lives dummy
scoreboard objectives add jump_cd dummy
scoreboard objectives add jump_time dummy
team add no_pvp
team modify no_pvp color green
team modify no_pvp friendlyFire false
team modify no_pvp nametagVisibility never
scoreboard objectives add minecart_time dummy
scoreboard objectives add quick_bomb_cd dummy
scoreboard objectives add build_dispenser minecraft.used:minecraft.stray_spawn_egg
scoreboard objectives add build_dispenser_cd dummy
scoreboard objectives add build_sentry_cd dummy
scoreboard objectives add shoot_sentry_cd dummy
scoreboard objectives add metal_mine minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add break_pick minecraft.broken:minecraft.golden_pickaxe
scoreboard objectives add metal_mine_cd dummy
scoreboard objectives add build_creeper_cd dummy
execute unless score tnt.force_class config matches -2147483648..2147483647 run scoreboard players set tnt.force_class config -1
scoreboard objectives add drill_cd dummy
scoreboard objectives add drill_time dummy
scoreboard objectives add load_crossbow dummy
scoreboard objectives add crossbow_time dummy
scoreboard objectives add shoot_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add crystal_count dummy
scoreboard objectives add tnt_arrow dummy
scoreboard objectives add triangulator_cd dummy
scoreboard objectives add tagUUID0 dummy
scoreboard objectives add tagUUID1 dummy
scoreboard objectives add tagUUID2 dummy
scoreboard objectives add tagUUID3 dummy
scoreboard objectives add tag_time dummy
scoreboard objectives add warp_cd dummy
scoreboard objectives add focus_time dummy
scoreboard objectives add reatomize_cd dummy
scoreboard objectives add dagger_cd dummy
scoreboard objectives add cloak_cd dummy
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add dagger_time dummy
scoreboard objectives add mini_tnt_class trigger
scoreboard objectives add selected_class dummy
scoreboard objectives add payload_time trigger
scoreboard objectives add payload_respawn_time trigger
scoreboard objectives add payload_setup_time trigger
scoreboard objectives add pots dummy
scoreboard objectives add pot_cd.dmg dummy
scoreboard objectives add pot_cd.psn dummy
scoreboard objectives add pot_cd.reg dummy
scoreboard objectives add pot_cd.gdb dummy
scoreboard objectives add cs_time trigger
scoreboard objectives add cs_setup_time trigger
scoreboard objectives add cs_bomb_time trigger
scoreboard objectives add defuse dummy
scoreboard objectives add boss_fight_class dummy
scoreboard objectives add boss_lifetime dummy
scoreboard objectives add boss_damage dummy
scoreboard objectives add boss_kills dummy
scoreboard objectives add boss_points dummy
data merge storage cc:disco {wool:["red_concrete","blue_concrete","cyan_concrete","gray_concrete","lime_concrete","pink_concrete","black_concrete","brown_concrete","green_concrete","orange_concrete","purple_concrete","white_concrete","yellow_concrete","magenta_concrete","light_blue_concrete","light_gray_concrete"]}
# put this comment and command at the bottom
tellraw @a "Reloaded Cephalopod Contest."