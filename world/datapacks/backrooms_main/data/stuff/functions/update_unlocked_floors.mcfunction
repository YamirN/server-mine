execute if score $number selected_floor matches 0..1 if score $number floor1U matches 0 run scoreboard players set $number unlocked_floor 2
execute if score $number selected_floor matches 0..1 if score $number floor1U matches 0 run scoreboard players set $number floor1U 1
#
execute if score $number selected_floor matches 2 if score $number floor1U matches 1 if score $number floor2U matches 0 run scoreboard players set $number unlocked_floor 3
execute if score $number selected_floor matches 2 if score $number floor2U matches 0 run scoreboard players set $number floor2U 1
#
execute if score $number selected_floor matches 3 if score $number floor2U matches 1 if score $number floor3U matches 0 run scoreboard players set $number unlocked_floor 4
execute if score $number selected_floor matches 3 if score $number floor3U matches 0 run scoreboard players set $number floor3U 1
#
execute if score $number selected_floor matches 4 if score $number floor3U matches 1 if score $number floor4U matches 0 run scoreboard players set $number unlocked_floor 5
execute if score $number selected_floor matches 4 if score $number floor4U matches 0 run scoreboard players set $number floor4U 1
#
execute if score $number selected_floor matches 5 if score $number floor4U matches 1 if score $number floor5U matches 0 run scoreboard players set $number unlocked_floor 6
execute if score $number selected_floor matches 5 if score $number floor5U matches 0 run scoreboard players set $number floor5U 1
#
execute if score $number selected_floor matches 6 if score $number floor5U matches 1 if score $number floor6U matches 0 run scoreboard players set $number unlocked_floor 7
execute if score $number selected_floor matches 6 if score $number floor6U matches 0 run scoreboard players set $number floor6U 1
#
execute if score $number selected_floor matches 7 if score $number floor6U matches 1 if score $number floor7U matches 0 run scoreboard players set $number unlocked_floor 8
execute if score $number selected_floor matches 7 if score $number floor7U matches 0 run scoreboard players set $number floor7U 1
#
execute if score $number selected_floor matches 8 if score $number floor7U matches 1 if score $number floor8U matches 0 run scoreboard players set $number unlocked_floor 9
execute if score $number selected_floor matches 8 if score $number floor8U matches 0 run scoreboard players set $number floor8U 1
#
execute if score $number selected_floor matches 9 if score $number floor8U matches 1 if score $number floor9U matches 0 run scoreboard players set $number unlocked_floor 10
execute if score $number selected_floor matches 9 if score $number floor9U matches 0 run scoreboard players set $number floor9U 1
#
execute if score $number selected_floor matches 10 if score $number floor9U matches 1 if score $number floor10U matches 0 run scoreboard players set $number unlocked_floor 11
execute if score $number selected_floor matches 10 if score $number floor10U matches 0 run scoreboard players set $number floor10U 1
#
execute if score $number selected_floor matches 11 if score $number floor10U matches 1 if score $number floor11U matches 0 run scoreboard players set $number unlocked_floor 12
execute if score $number selected_floor matches 11 if score $number floor11U matches 0 run scoreboard players set $number floor11U 1
#
execute if score $number selected_floor matches 12 if score $number floor11U matches 1 if score $number floor12U matches 0 run scoreboard players set $number unlocked_floor 13
execute if score $number selected_floor matches 12 if score $number floor12U matches 0 run scoreboard players set $number floor12U 1
#
execute if score $number selected_floor matches 13 if score $number floor12U matches 1 if score $number floor13U matches 0 run scoreboard players set $number unlocked_floor 14
execute if score $number selected_floor matches 13 if score $number floor13U matches 0 run scoreboard players set $number floor13U 1