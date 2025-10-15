tp @s 303.5 13.6 1.5
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0
effect give @s nausea 9 0 true
scoreboard players set @s hallway_timer 640
execute at @s run playsound minecraft:custom.hallway_friends voice @s ~ ~ ~ 0.75 1
fill ~-2 ~-4 ~-4 ~2 ~4 ~4 air replace minecraft:end_gateway
fill ~-2 ~-4 ~-4 ~2 ~4 ~4 minecraft:command_block[facing=up] replace minecraft:repeating_command_block
#
setblock 300 13 -2 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 306 13 -14 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 300 14 -16 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
fill 288 16 -2 288 13 -3 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 315 13 1 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 312 13 -12 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 330 13 -12 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 325 13 -16 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 324 13 -2 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 342 13 -3 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 336 13 -1 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 276 14 -15 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 280 13 2 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 270 13 -12 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 264 14 -15 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 342 13 -11 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 294 13 -14 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
#
kill @e[type=item]