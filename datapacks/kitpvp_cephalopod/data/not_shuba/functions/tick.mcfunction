# This function will run every gametick. (20 times per second)
# You can add comments by starting the line with a #.
# For more information on functions, check https://minecraft.fandom.com/wiki/Function_(Java_Edition)

tag @a remove space_jumps
#tag @a[x=-297,y=52,z=-92,dx=99,dy=63,dz=83] add space_jumps
effect give @a[tag=space_jumps] slow_falling 1 0 true
effect give @a[tag=space_jumps] jump_boost 1 0 true