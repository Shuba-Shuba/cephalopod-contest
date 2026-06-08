$dialog show @s {\
    type: "minecraft:multi_action",\
    title: "Choose a player to duel",\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "wager",\
            label: "Wager",\
            label_format: "%s: $%s",\
            start: 3,\
            end: $(end),\
            step: 1,\
            initial: 3\
        }\
    ],\
    can_close_with_escape: false,\
    after_action: "none",\
    pause: false,\
    exit_action: {\
        label: "Choose random player",\
        width: 300,\
        action: {\
            type: "minecraft:dynamic/run_command",\
            template: "trigger board_duel_opponent set -$(wager_str)"\
        }\
    },\
    columns: 1,\
    actions: $(actions)\
}