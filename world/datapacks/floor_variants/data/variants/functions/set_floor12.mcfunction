function variants:set_floor1
#floor
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:black_wool replace minecraft:sandstone
#wall1
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:black_concrete_powder replace minecraft:stripped_oak_wood
#wall2
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:coal_block replace minecraft:stripped_birch_wood
#ceiling
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:black_concrete replace minecraft:smooth_stone
#light
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:obsidian replace minecraft:raw_gold_block
#light level
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 light[level=0] replace light
schedule function variants:remove_floor_stands 20t