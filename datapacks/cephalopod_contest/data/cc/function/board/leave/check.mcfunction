$execute unless entity $(try) run function cc:board/leave/found {name:"$(try)"}
$execute as $(try) if entity @s[tag=out] run function cc:board/leave/found {name:"$(try)"}