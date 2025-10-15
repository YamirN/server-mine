execute if score $number generation_speed matches 3 run schedule function stuff:speed_generation/logic 2t replace
execute if score $number generation_speed matches 2 run schedule function stuff:speed_generation/logic 6t replace
execute if score $number generation_speed matches 1 run schedule function stuff:speed_generation/logic 10t replace
#
function stuff:speed_generation/4way/detect_4way
execute if entity @a[tag=generating_tiles] run function stuff:speed_generation/north/detect_north
execute if entity @a[tag=generating_tiles] run function stuff:speed_generation/east/detect_east
execute if entity @a[tag=generating_tiles] run function stuff:speed_generation/south/detect_south
execute if entity @a[tag=generating_tiles] run function stuff:speed_generation/west/detect_west