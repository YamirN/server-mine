function variants:set_floor1
#floor
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:blackstone replace minecraft:sandstone
#wall1
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:polished_blackstone_bricks replace minecraft:stripped_oak_wood
#wall2
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:polished_blackstone replace minecraft:stripped_birch_wood
#ceiling
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 minecraft:netherite_block replace minecraft:smooth_stone
#light level
execute as @e[type=armor_stand,name="floor_stand"] at @s run fill ~ ~4 ~ ~12 ~11 ~-12 light[level=10] replace light
schedule function variants:remove_floor_stands 20t