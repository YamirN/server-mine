fill 10 3 38 10 3 33 minecraft:redstone_block
fill 16 3 38 16 3 20 minecraft:redstone_block
fill 22 3 38 22 3 20 minecraft:redstone_block
fill 28 3 38 28 3 20 minecraft:redstone_block
fill 34 3 38 34 3 20 minecraft:redstone_block
#
scoreboard players set @a north_counter 0
scoreboard players set @a east_counter 0
scoreboard players set @a south_counter 0
scoreboard players set @a west_counter 0
tag @a remove room_limit_met
tag @a add generating_tiles
execute as @e[type=armor_stand,name="block_stand"] at @s run fill ~ ~-1 ~ ~ ~-1 ~-190 redstone_block
scoreboard players set @a event_time 0
#
function variants:summon_floor_stands
execute if score $number selected_floor matches 0..1 run function variants:set_floor1
execute if score $number selected_floor matches 2 run function variants:set_floor2
execute if score $number selected_floor matches 3 run function variants:set_floor3
execute if score $number selected_floor matches 4 run function variants:set_floor4
execute if score $number selected_floor matches 5 run function variants:set_floor5
execute if score $number selected_floor matches 6 run function variants:set_floor6
execute if score $number selected_floor matches 7 run function variants:set_floor7
execute if score $number selected_floor matches 8 run function variants:set_floor8
execute if score $number selected_floor matches 9 run function variants:set_floor9
execute if score $number selected_floor matches 10 run function variants:set_floor10
execute if score $number selected_floor matches 11 run function variants:set_floor11
execute if score $number selected_floor matches 12 run function variants:set_floor12
execute if score $number selected_floor matches 13.. run function variants:set_floor13
#
tag @a[tag=artifact_mode] remove mega_rooms
execute if score $number selected_floor matches 13 run tag @a add mega_rooms