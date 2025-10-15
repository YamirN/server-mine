fill ~ ~2 ~-2 ~ ~4 ~-4 minecraft:end_gateway
setblock ~-2 ~1 ~-2 air destroy
setblock ~ ~ ~-3 redstone_block
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 0.75
effect give @a[distance=..15] blindness 4 0 true