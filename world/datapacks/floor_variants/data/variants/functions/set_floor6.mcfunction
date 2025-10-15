function variants:set_floor1
#floor
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:nether_wart_block replace minecraft:sandstone
#wall1
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:crimson_planks replace minecraft:stripped_oak_wood
#wall2
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:stripped_crimson_hyphae replace minecraft:stripped_birch_wood
#ceiling
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:red_nether_bricks replace minecraft:smooth_stone
#light level
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 light[level=11] replace light
schedule function variants:remove_floor_stands 20t