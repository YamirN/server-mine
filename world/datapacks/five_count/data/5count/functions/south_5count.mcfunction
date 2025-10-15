scoreboard players add @a south_counter 1
scoreboard players set @a east_counter 0
scoreboard players set @a north_counter 0
scoreboard players set @a west_counter 0
execute unless entity @a[tag=room_limit_met] run fill 16 3 38 16 3 19 minecraft:redstone_block
execute unless entity @a[tag=room_limit_met] run fill 22 3 38 22 3 19 minecraft:redstone_block
execute unless entity @a[tag=room_limit_met] run fill 34 3 38 34 3 19 minecraft:redstone_block
execute if entity @a[scores={south_counter=6..}] run kill @e[type=item_frame,tag=south_frame,tag=!end_frame]
scoreboard players set @a[scores={south_counter=6..}] south_counter 0