tag @s add raycaster
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
#
execute anchored eyes positioned ^ ^-0.15 ^0.25 run function stuff:mauve_items/ultra_bow/raycast_loop
#
tag @s remove raycaster
scoreboard players reset distance raycast_time