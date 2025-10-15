execute unless entity @e[type=minecraft:falling_block,tag=noclip_block_concrete] run function stuff:noclip_blocks/noclip_concrete
function stuff:noclip_blocks/noclip_concrete
tp @a -79.5 180 47.5 90 0
effect give @a minecraft:blindness 4 0 true
weather clear
time set 11000